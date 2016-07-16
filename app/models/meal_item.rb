class MealItem < ActiveRecord::Base
  belongs_to :meal

  validates :title, presence: true
  validates :description, presence: true

  delegate :user, to: :meal, allow_nil: true
end
