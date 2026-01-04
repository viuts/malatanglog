package handler

import (
	"context"
	"time"

	"github.com/google/uuid"
	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"github.com/viuts/malatanglog/apps/backend/internal/handler/middleware"
	malatanglogv1 "github.com/viuts/malatanglog/apps/backend/pkg/api/malatanglog/v1"
)

func (h *MalatangHandler) CreateReview(ctx context.Context, req *malatanglogv1.CreateReviewRequest) (*malatanglogv1.Review, error) {
	userID := middleware.UserIDFromContext(ctx)

	visitedAt, _ := time.Parse(time.RFC3339, req.VisitedAt)
	if visitedAt.IsZero() {
		visitedAt = time.Now()
	}

	review := &domain.Review{
		ShopName:              req.ShopName,
		SoupType:              req.SoupType,
		SpicinessLevel:        req.SpicinessLevel,
		OrderStyle:            req.OrderStyle.String(),
		TasteTonkotsuGyukotsu: int(req.TasteTonkotsuGyukotsu),
		TasteYakuzen:          int(req.TasteYakuzen),
		TasteSesame:           int(req.TasteSesame),
		TasteShibire:          int(req.TasteShibire),
		TasteSpiciness:        int(req.TasteSpiciness),
		TasteFat:              int(req.TasteFat),
		Ingredients:           req.Ingredients,
		BestIngredient:        req.BestIngredient,
		PhotoURL:              req.PhotoUrl,
		Comment:               req.Comment,
		OverallRating:         req.OverallRating,
		VisitedAt:             visitedAt,
	}

	created, err := h.reviewUsecase.CreateReview(ctx, userID, review)
	if err != nil {
		return nil, err
	}

	return &malatanglogv1.Review{
		Id:                    created.ID.String(),
		ShopName:              created.ShopName,
		SoupType:              created.SoupType,
		SpicinessLevel:        created.SpicinessLevel,
		OrderStyle:            malatanglogv1.Review_OrderStyle(malatanglogv1.Review_OrderStyle_value[created.OrderStyle]),
		TasteTonkotsuGyukotsu: int32(created.TasteTonkotsuGyukotsu),
		TasteYakuzen:          int32(created.TasteYakuzen),
		TasteSesame:           int32(created.TasteSesame),
		TasteShibire:          int32(created.TasteShibire),
		TasteSpiciness:        int32(created.TasteSpiciness),
		TasteFat:              int32(created.TasteFat),
		Ingredients:           created.Ingredients,
		BestIngredient:        created.BestIngredient,
		PhotoUrl:              created.PhotoURL,
		Comment:               created.Comment,
		OverallRating:         created.OverallRating,
		CreatedAt:             created.CreatedAt.Format(time.RFC3339),
		VisitedAt:             created.VisitedAt.Format(time.RFC3339),
	}, nil
}

func (h *MalatangHandler) UpdateReview(ctx context.Context, req *malatanglogv1.UpdateReviewRequest) (*malatanglogv1.Review, error) {
	userID := middleware.UserIDFromContext(ctx)

	visitedAt, _ := time.Parse(time.RFC3339, req.VisitedAt)
	if visitedAt.IsZero() {
		visitedAt = time.Now()
	}

	reviewID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, err
	}

	review := &domain.Review{
		ID:                    reviewID,
		ShopName:              req.ShopName,
		SoupType:              req.SoupType,
		SpicinessLevel:        req.SpicinessLevel,
		OrderStyle:            req.OrderStyle.String(),
		TasteTonkotsuGyukotsu: int(req.TasteTonkotsuGyukotsu),
		TasteYakuzen:          int(req.TasteYakuzen),
		TasteSesame:           int(req.TasteSesame),
		TasteShibire:          int(req.TasteShibire),
		TasteSpiciness:        int(req.TasteSpiciness),
		TasteFat:              int(req.TasteFat),
		Ingredients:           req.Ingredients,
		BestIngredient:        req.BestIngredient,
		PhotoURL:              req.PhotoUrl,
		Comment:               req.Comment,
		OverallRating:         req.OverallRating,
		VisitedAt:             visitedAt,
	}

	updated, err := h.reviewUsecase.UpdateReview(ctx, userID, review)
	if err != nil {
		return nil, err
	}

	return &malatanglogv1.Review{
		Id:                    updated.ID.String(),
		ShopName:              updated.ShopName,
		SoupType:              updated.SoupType,
		SpicinessLevel:        updated.SpicinessLevel,
		OrderStyle:            malatanglogv1.Review_OrderStyle(malatanglogv1.Review_OrderStyle_value[updated.OrderStyle]),
		TasteTonkotsuGyukotsu: int32(updated.TasteTonkotsuGyukotsu),
		TasteYakuzen:          int32(updated.TasteYakuzen),
		TasteSesame:           int32(updated.TasteSesame),
		TasteShibire:          int32(updated.TasteShibire),
		TasteSpiciness:        int32(updated.TasteSpiciness),
		TasteFat:              int32(updated.TasteFat),
		Ingredients:           updated.Ingredients,
		BestIngredient:        updated.BestIngredient,
		PhotoUrl:              updated.PhotoURL,
		Comment:               updated.Comment,
		OverallRating:         updated.OverallRating,
		CreatedAt:             updated.CreatedAt.Format(time.RFC3339),
		VisitedAt:             updated.VisitedAt.Format(time.RFC3339),
	}, nil
}

func (h *MalatangHandler) DeleteReview(ctx context.Context, req *malatanglogv1.DeleteReviewRequest) (*malatanglogv1.Review, error) {
	userID := middleware.UserIDFromContext(ctx)

	if err := h.reviewUsecase.DeleteReview(ctx, userID, req.Id); err != nil {
		return nil, err
	}

	return &malatanglogv1.Review{Id: req.Id}, nil
}

func (h *MalatangHandler) ListReviews(ctx context.Context, req *malatanglogv1.ListReviewsRequest) (*malatanglogv1.ListReviewsResponse, error) {
	userID := middleware.UserIDFromContext(ctx)

	reviews, err := h.reviewUsecase.ListReviews(ctx, userID)
	if err != nil {
		return nil, err
	}

	pbReviews := make([]*malatanglogv1.Review, len(reviews))
	for i, r := range reviews {
		pbReviews[i] = &malatanglogv1.Review{
			Id:                    r.ID.String(),
			ShopName:              r.ShopName,
			SoupType:              r.SoupType,
			SpicinessLevel:        r.SpicinessLevel,
			OrderStyle:            malatanglogv1.Review_OrderStyle(malatanglogv1.Review_OrderStyle_value[r.OrderStyle]),
			TasteTonkotsuGyukotsu: int32(r.TasteTonkotsuGyukotsu),
			TasteYakuzen:          int32(r.TasteYakuzen),
			TasteSesame:           int32(r.TasteSesame),
			TasteShibire:          int32(r.TasteShibire),
			TasteSpiciness:        int32(r.TasteSpiciness),
			TasteFat:              int32(r.TasteFat),
			Ingredients:           r.Ingredients,
			BestIngredient:        r.BestIngredient,
			PhotoUrl:              r.PhotoURL,
			Comment:               r.Comment,
			OverallRating:         r.OverallRating,
			CreatedAt:             r.CreatedAt.Format(time.RFC3339),
			VisitedAt:             r.VisitedAt.Format(time.RFC3339),
		}
	}

	return &malatanglogv1.ListReviewsResponse{
		Reviews: pbReviews,
	}, nil
}
