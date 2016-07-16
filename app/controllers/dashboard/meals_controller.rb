class Dashboard::MealsController < ApplicationController
  before_action :set_user, :authorize

  def index
    @meals = @user.meals
  end

  def show
    @meal = Meal.find params[:id]
    @orders = @meal.orders
  end

  private

  def set_user
    @user = current_user
  end
end
