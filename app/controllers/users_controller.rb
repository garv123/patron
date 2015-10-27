class UsersController < ApplicationController
  def create
  	User.create_new_user(user_params)
  end

  def login
  	u = User.where(login_params)
  end

  private
  def user_params
  	params.permit(:email, :password,:type)
  end

  def login_params
  	params.permit(:email, :password, :type)
  end
end
