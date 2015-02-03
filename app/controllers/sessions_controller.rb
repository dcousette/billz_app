class SessionsController < ApplicationController
  before_action :authorize, only: :destroy
  
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    
    if user && user.authenticate( params[:session][:password]) 
      session[:user_id] = user.id
      redirect_to payments_path
    else
      redirect_to login_path, alert: "Invalid username/ password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, alert: "You have successfully logged out"
  end
end
