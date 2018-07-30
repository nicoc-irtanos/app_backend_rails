class UserController < ApplicationController
  def new
  end

  def create
    user = User.create!(username: params[:username], bio: params[:bio])
    redirect_to("/user/#{user.id}")
  end

  def show
    @user = User.find(params[:id])
  end
end
