class UsersController < ApplicationController
  before_action :require_admin

  def index
    @guests = Guest.all
  end

end
