require 'rails_helper'

RSpec.describe Meal, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:orders) }
    it { should have_many(:meal_items).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price) }
  end
end
