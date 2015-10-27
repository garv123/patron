class UsersController < ApplicationController
  def create
  	user_object = User.new(user_params)
  	if user_object.save?
  		render json: {message: 'User has been created successfully', status: 200}
  	else
  		render json: {message: u.error_messages, status: 400}
  	end

  end

  def login
  	u = User.where(login_params)
  	if u.present?
  		render json: {message:'Login Successful', user_id: u.id}
  	else
  		render json: {message: 'User not Found'}
  	end
  end

  private
  def user_params
  	params.permit(:email, :password,:type)
  end

  def login_params
  	params.permit(:email, :password, :type)
  end
end
