class MealsController < ApplicationController
  before_action :authorize

  def index
    @meals = Meal.where.not(user_id: current_user.id)
  end

  def show
    @meal = Meal.find params[:id]
  end
end
