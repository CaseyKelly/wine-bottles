class User < ActiveRecord::Base
  has_secure_password

  has_many :wine_bottles
  has_many :scotch_bottles
end
