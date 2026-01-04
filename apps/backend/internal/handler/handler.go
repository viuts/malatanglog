package handler

import (
	"github.com/viuts/malatanglog/apps/backend/internal/usecase"
	malatanglogv1 "github.com/viuts/malatanglog/apps/backend/pkg/api/malatanglog/v1"
)

type MalatangHandler struct {
	malatanglogv1.UnimplementedFlavorServiceServer
	shopUsecase   usecase.ShopUsecase
	reviewUsecase usecase.ReviewUsecase
}

func NewMalatangHandler(shopUC usecase.ShopUsecase, reviewUC usecase.ReviewUsecase) *MalatangHandler {
	return &MalatangHandler{
		shopUsecase:   shopUC,
		reviewUsecase: reviewUC,
	}
}
