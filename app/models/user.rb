class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :wine_bottles
end
