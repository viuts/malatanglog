package usecase

import (
	"context"

	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"github.com/viuts/malatanglog/apps/backend/internal/repository"
)

type ShopUsecase interface {
	GetNearbyShops(ctx context.Context, lat, lng, radius float64, query string) ([]domain.Shop, error)
}

type shopUsecase struct {
	shopRepo repository.ShopRepository
}

func NewShopUsecase(repo repository.ShopRepository) ShopUsecase {
	return &shopUsecase{
		shopRepo: repo,
	}
}

func (u *shopUsecase) GetNearbyShops(ctx context.Context, lat, lng, radius float64, query string) ([]domain.Shop, error) {
	return u.shopRepo.GetNearbyShops(ctx, lat, lng, radius, query)
}
