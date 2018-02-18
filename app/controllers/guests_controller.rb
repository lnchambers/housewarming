class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      flash[:notice] = "You have RSVP'd"
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong. Try again"
      render :new
    end
  end

  private

    def guest_params
      params.require(:guest).permit(:name, :accompanying)
    end
end
