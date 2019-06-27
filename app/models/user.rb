class User < ActiveRecord::Base
#accessed through bcrypt which allows us to use the authenticate method
  has_secure_password
  has_many :shoes, :handbags
  has_many :designers, through: :shoes, :handbags

end
