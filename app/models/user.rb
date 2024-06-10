class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :name, presence: true, numericality: false, length: { minimum: 3 }

  has_many :likes, dependent: :destroy
end
