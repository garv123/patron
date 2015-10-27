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

end
