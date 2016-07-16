class User < ActiveRecord::Base
  has_secure_password

  has_many :meals, dependent: :destroy
  has_many :meal_items, through: :meals
  has_many :orders

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
