class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true,length: { maximum: 60 }
  validates :password, presence: true, length: { maximum: 60}
  validates :type, presence: true, length: { maximum: 40}
  
	def self.create_new_user(params)
    create(name: params[:name], email: params[:email], password: params[:password])
  end

end
