class AuthenticationController < ApplicationController
  def create
    debugger
  	user_object = Authentication.new(user_params)
  	if user_object.save!
  		render json: { message: 'User has been created successfully', status: 200}
  	else
  		render json: { message: user_object.error_messages, status: 400}
  	end

  end

  def login
  	u = Authentication.where(login_params).first
    debugger
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
