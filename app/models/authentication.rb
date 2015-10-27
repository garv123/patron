# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  email    :string
#  password :string
#  type     :string
#

class Authentication < User
  validates :email, presence: true,length: { maximum: 60 }, uniqueness:true
  validates :password, presence: true, length: { maximum: 60}
  validates :type, presence: true, length: { maximum: 40}
end
