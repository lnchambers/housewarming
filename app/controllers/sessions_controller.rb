class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:notice] = "Login incorrect. Try again"
      redirect_to root_path
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
