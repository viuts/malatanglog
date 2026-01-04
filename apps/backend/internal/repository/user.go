package repository

import (
	"context"
	"errors"
	"strings"

	"github.com/viuts/malatanglog/apps/backend/internal/domain"
	"gorm.io/gorm"
)

type UserRepository interface {
	GetOrCreateUser(ctx context.Context, firebaseUID, email string) (*domain.User, error)
}

type userRepository struct {
	db *gorm.DB
}

func NewUserRepository(db *gorm.DB) UserRepository {
	return &userRepository{db: db}
}

func (r *userRepository) GetOrCreateUser(ctx context.Context, firebaseUID, email string) (*domain.User, error) {
	var user domain.User
	err := r.db.WithContext(ctx).Where("firebase_uid = ?", firebaseUID).First(&user).Error
	if err == nil {
		return &user, nil
	}

	if !errors.Is(err, gorm.ErrRecordNotFound) {
		return nil, err
	}

	// Create new user
	username := strings.Split(email, "@")[0]
	if username == "" {
		username = "user_" + firebaseUID[:8]
	}
	
	user = domain.User{
		FirebaseUID: firebaseUID,
		Email:       email,
		Username:    username,
	}

	if err := r.db.WithContext(ctx).Create(&user).Error; err != nil {
		return nil, err
	}

	return &user, nil
}
