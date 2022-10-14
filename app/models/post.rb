class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many  :favorite_users, through: :favorites, source: :user
end
