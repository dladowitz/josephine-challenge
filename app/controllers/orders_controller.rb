class OrdersController < ApplicationController
  before_action :authorize

  def create
    # binding.pry
    order = current_user.orders.build order_params.merge(meal_id: params[:meal_id])

    if order.save
      flash[:success] = "Get psyched, awesome food is gonna be made!"
      redirect_to meal_path(params[:meal_id])
    else
      flash[:danger] = "Something has gone horribly wrong. We are alerting are robots to find out."
      render "meals/show"
    end
  end

  private

  def order_params
    params.require(:order).permit(:notes)
  end
end
