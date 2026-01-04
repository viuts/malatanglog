package handler

import (
	"context"

	malatanglogv1 "github.com/viuts/malatanglog/apps/backend/pkg/api/malatanglog/v1"
)

func (h *MalatangHandler) GetShops(ctx context.Context, req *malatanglogv1.GetShopsRequest) (*malatanglogv1.GetShopsResponse, error) {
	var lat, lng float64
	if req.UserLocation != nil {
		lat = req.UserLocation.Lat
		lng = req.UserLocation.Lng
	}

	shops, err := h.shopUsecase.GetNearbyShops(ctx, lat, lng, req.RadiusMeters, req.Query)
	if err != nil {
		return nil, err
	}

	pbShops := make([]*malatanglogv1.Shop, len(shops))

	for i, s := range shops {
		pbShops[i] = &malatanglogv1.Shop{
			Id:        s.ID.String(),
			Name:      s.Name,
			Lat:       s.Lat,
			Lng:       s.Lng,
			Category:  s.Category,
			IsChain:   s.IsChain,
			Address:   s.Address,
			ImageUrls: s.ImageURLs,
			SourceUrl: s.SourceURL,
		}
	}

	return &malatanglogv1.GetShopsResponse{
		Shops: pbShops,
	}, nil
}
