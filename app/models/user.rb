class User < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true
  validates :password, presence: true 
  has_secure_password
  has_many :payments 
end
