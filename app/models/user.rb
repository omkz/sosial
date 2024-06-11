class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :name, presence: true, numericality: false, length: { minimum: 3 }

  has_many :likes, dependent: :destroy
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  after_commit :add_default_avatar, on: [:create, :update]

  private

  def add_default_avatar
    unless avatar.attached?
      self.avatar.attach(io: File.open(Rails.root.join("app", "assets", "images", "avatar.png")), filename: 'avatar.png', content_type: "image/png")
    end
  end
end
