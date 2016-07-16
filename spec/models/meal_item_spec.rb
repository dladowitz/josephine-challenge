require 'rails_helper'

RSpec.describe MealItem, type: :model do
  describe 'associations' do
    it { should belong_to(:meal) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end

  describe 'delegations' do
    it { should delegate_method(:user).to(:meal) }
  end
end
