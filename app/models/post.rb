class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes, as: :likeable, dependent: :destroy
end
