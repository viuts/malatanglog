package repository

import (
	"context"

	"github.com/google/uuid"
	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"gorm.io/gorm"
)

type ReviewRepository interface {
	CreateReview(ctx context.Context, review *domain.Review) error
	UpdateReview(ctx context.Context, review *domain.Review) error
	DeleteReview(ctx context.Context, id uuid.UUID, userID string) error
	ListReviews(ctx context.Context, userID string) ([]domain.Review, error)
}

type reviewRepository struct {
	db *gorm.DB
}

func NewReviewRepository(db *gorm.DB) ReviewRepository {
	return &reviewRepository{db: db}
}

func (r *reviewRepository) CreateReview(ctx context.Context, review *domain.Review) error {
	return r.db.WithContext(ctx).Create(review).Error
}

func (r *reviewRepository) UpdateReview(ctx context.Context, review *domain.Review) error {
	return r.db.WithContext(ctx).Save(review).Error
}

func (r *reviewRepository) DeleteReview(ctx context.Context, id uuid.UUID, userID string) error {
	userUUID, err := uuid.Parse(userID)
	if err != nil {
		return err
	}
	return r.db.WithContext(ctx).Where("id = ? AND user_id = ?", id, userUUID).Delete(&domain.Review{}).Error
}

func (r *reviewRepository) ListReviews(ctx context.Context, userID string) ([]domain.Review, error) {
	var reviews []domain.Review
	userUUID, err := uuid.Parse(userID)
	if err != nil {
		return nil, err
	}
	if err := r.db.WithContext(ctx).Where("user_id = ?", userUUID).Order("created_at DESC").Find(&reviews).Error; err != nil {
		return nil, err
	}
	return reviews, nil
}
