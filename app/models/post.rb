class Post < ApplicationRecord
  validates :image,  presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  has_many  :favorite_users, through: :favorites, source: :user
end
