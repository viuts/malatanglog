package repository

import (
	"context"
	"strings"

	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"gorm.io/gorm"
)

type ShopRepository interface {
	GetNearbyShops(ctx context.Context, lat, lng, radius float64, query string) ([]domain.Shop, error)
}

type shopRepository struct {
	db *gorm.DB
}

func NewShopRepository(db *gorm.DB) ShopRepository {
	return &shopRepository{db: db}
}

func (r *shopRepository) GetNearbyShops(ctx context.Context, lat, lng, radius float64, queryStr string) ([]domain.Shop, error) {
	var shops []domain.Shop
	query := r.db.WithContext(ctx)

	if (lat != 0 || lng != 0) && radius > 0 {
		// Use geography casting for meter-based distance calculation
		query = query.Where("ST_DWithin(geom::geography, ST_SetSRID(ST_MakePoint(?, ?), 4326)::geography, ?)", lng, lat, radius)
	}
	
	if queryStr != "" {
		// Basic case-insensitive search on name
		query = query.Where("LOWER(name) LIKE ?", "%"+strings.ToLower(queryStr)+"%")
	}

	if err := query.Find(&shops).Error; err != nil {
		return nil, err
	}
	return shops, nil
}
