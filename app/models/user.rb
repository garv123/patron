# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  email    :string
#  password :string
#  type     :integer
#

class User < ActiveRecord::Base
  before_save
	validates :email, presence: true,length: { maximum: 60 }
  validates :password, presence: true, length: { maximum: 60}
  validates :type, presence: true, length: { maximum: 40}


end
