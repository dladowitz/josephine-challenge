class SessionsController < ApplicationController
  layout "landing_page"
  
  def index
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/meals'
    else
      flash[:danger] = "Incorrect email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
