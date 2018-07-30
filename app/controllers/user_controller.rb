class UserController < ApplicationController
  def new
  end

  def create
    user = User.create(username: params[:username], bio: params[:bio])
    if user.id == nil
      redirect_to("/user/error")
    else
      redirect_to("/user/#{user.username}")
    end
  end

  def show
    id = params[:id]
    if /\d/.match?(id)
      @user = User.find(id.to_i)
    else
      @user = User.find_by(username: id)
    end
  end

  def error
  end
end
