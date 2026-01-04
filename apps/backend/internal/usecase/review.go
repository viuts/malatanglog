package usecase

import (
	"context"

	"github.com/google/uuid"
	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"github.com/viuts/malatanglog/apps/backend/internal/repository"
)

type ReviewUsecase interface {
	CreateReview(ctx context.Context, userID string, review *domain.Review) (*domain.Review, error)
	UpdateReview(ctx context.Context, userID string, review *domain.Review) (*domain.Review, error)
	DeleteReview(ctx context.Context, userID string, reviewID string) error
	ListReviews(ctx context.Context, userID string) ([]domain.Review, error)
}

type reviewUsecase struct {
	reviewRepo repository.ReviewRepository
}

func NewReviewUsecase(repo repository.ReviewRepository) ReviewUsecase {
	return &reviewUsecase{
		reviewRepo: repo,
	}
}

func (u *reviewUsecase) CreateReview(ctx context.Context, userID string, review *domain.Review) (*domain.Review, error) {
	uid, err := uuid.Parse(userID)
	if err != nil {
		return nil, err
	}
	review.UserID = uid
	if err := u.reviewRepo.CreateReview(ctx, review); err != nil {
		return nil, err
	}
	return review, nil
}

func (u *reviewUsecase) UpdateReview(ctx context.Context, userID string, review *domain.Review) (*domain.Review, error) {
	uid, err := uuid.Parse(userID)
	if err != nil {
		return nil, err
	}
	review.UserID = uid
	if err := u.reviewRepo.UpdateReview(ctx, review); err != nil {
		return nil, err
	}
	return review, nil
}

func (u *reviewUsecase) DeleteReview(ctx context.Context, userID string, reviewID string) error {
	rid, err := uuid.Parse(reviewID)
	if err != nil {
		return err
	}
	return u.reviewRepo.DeleteReview(ctx, rid, userID)
}

func (u *reviewUsecase) ListReviews(ctx context.Context, userID string) ([]domain.Review, error) {
	return u.reviewRepo.ListReviews(ctx, userID)
}
