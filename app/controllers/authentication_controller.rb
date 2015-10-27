class AuthenticationController < ApplicationController
  #### Things which i could have done
  ### Instead of using sti if we could use polymorphic associations it would be a lot better
  ### Using Concerns and putting error handlers and errors and raise exception if record not found
  ### The code gets cleaner
  ### We could have used service objects to keep the controllers short as possible.
  ### bcrypt is an excellent gem for encrypting. I could not use as i have restricted the column_type to 30chars
  ### TDD would be the better way to approach the problem. :)

  def create
  	user_object = Authentication.new(user_params)
  	if user_object.save
  		render json: { message: 'User has been created successfully', status: 200}
  	else
  		render json: { message: user_object.errors, status: 400}
  	end

  end

  def login
  	u = Authentication.where(login_params).first
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
