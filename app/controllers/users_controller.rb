class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have RSVP'd"
      redirect_to welcome_path
    else
      flash[:notice] = "Something went wrong. Try again."
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :guests)
    end
end
