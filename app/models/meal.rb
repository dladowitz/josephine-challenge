class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :meal_items, dependent: :destroy
  has_many :orders

  validates :title, presence: true
  validates :price, presence: true, numericality: true
end
