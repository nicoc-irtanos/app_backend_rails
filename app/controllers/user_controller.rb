class UserController < ApplicationController
  def new
  end

  def create
    user = User.create(username: params[:username], bio: params[:bio])
    puts user.id.class
    if user.id == nil
      redirect_to("/user/error")
    else
      redirect_to("/user/#{user.id}")
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def error
  end
end
