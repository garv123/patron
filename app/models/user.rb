# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  email    :string
#  password :string
#  type     :string
#

class User < ActiveRecord::Base

end
