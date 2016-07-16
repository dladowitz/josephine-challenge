class Dashboard::MealsController < ApplicationController
  before_action :set_user

  def index
    @meals = @user.meals
  end

  def show
    @meal = Meal.find params[:id]
    @orders = @meal.orders
  end

  private

  def set_user
    @user = User.find params[:user_id]
  end
end
