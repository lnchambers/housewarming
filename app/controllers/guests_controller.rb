class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
  end
end
