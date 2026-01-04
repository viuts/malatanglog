package domain

import (
	"time"

	"github.com/google/uuid"
	"github.com/lib/pq"
	"gorm.io/gorm"
)

type User struct {
	ID          uuid.UUID `gorm:"type:uuid;primaryKey;default:gen_random_uuid()"`
	Username    string    `gorm:"uniqueIndex;not null"`
	Email       string    `gorm:"uniqueIndex;not null"`
	FirebaseUID string    `gorm:"uniqueIndex;not null"`
	Level       int       `gorm:"default:1"`
	Exp         int       `gorm:"default:0"`
	CreatedAt   time.Time
	UpdatedAt   time.Time
	DeletedAt   gorm.DeletedAt `gorm:"index"`
}

type Shop struct {
	ID              uuid.UUID `gorm:"type:uuid;primaryKey;default:gen_random_uuid()"`
	Name            string    `gorm:"not null"`
	Category        string
	Lat             float64 `gorm:"not null"`
	Lng             float64 `gorm:"not null"`
	IsChain         bool    `gorm:"default:false"`
	SourceID        string  `gorm:"index"`
	Geom            *string `gorm:"type:geometry(Point,4326)"` // PostGIS Point
	Address         string
	Phone           string
	OpeningHours    string
	ImageURLs       pq.StringArray `gorm:"type:text[];column:image_urls"`
	Rating          float64
	SourceURL       string  `gorm:"uniqueIndex;column:source_url"`
	ClearanceRadius float64 `gorm:"column:clearance_radius"`
	CreatedAt       time.Time
	UpdatedAt       time.Time
}

type Review struct {
	ID             uuid.UUID `gorm:"type:uuid;primaryKey;default:gen_random_uuid()"`
	UserID         uuid.UUID `gorm:"type:uuid;index"` // Nullable if needed, or default user
	ShopName       string
	SoupType       string  // 麻辣, etc. (Default: "麻辣")
	SpicinessLevel float64 // 0.5 increments
	OrderStyle     string  // "BUFFET", "ORDER"

	// Taste Profile (Scale 1-5 or similar)
	TasteTonkotsuGyukotsu int
	TasteYakuzen          int
	TasteSesame           int
	TasteShibire          int
	TasteSpiciness        int // Perceived spiciness
	TasteFat              int

	// Ingredients
	Ingredients    pq.StringArray `gorm:"type:text[]"`
	BestIngredient string

	// Media
	PhotoURL string
	Comment  string

	OverallRating float64

	CreatedAt time.Time
	UpdatedAt time.Time
	VisitedAt time.Time
}
