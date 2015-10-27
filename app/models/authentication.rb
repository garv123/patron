class Authentication < User
  validates :email, presence: true,length: { maximum: 60 }
  validates :password, presence: true, length: { maximum: 60}
  validates :type, presence: true, length: { maximum: 40}
end