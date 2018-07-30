class UserController < ApplicationController
  def new
  end

  def create
    User.create!(username: params[:username], bio: params[:bio])
    redirect_to('./')
  end
end
