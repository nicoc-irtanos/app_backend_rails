class UserController < ApplicationController
  def new
  end

  def create
    user = User.create(username: params[:username], bio: params[:bio])
    puts user.id.class
    if user.username == nil
      redirect_to("/user/error")
    else
      redirect_to("/user/#{user.username}")
    end
  end

  def show
    @user = User.find_by_username(params[:id])
  end

  def error
  end
end
