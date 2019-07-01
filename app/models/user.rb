class User < ApplicationRecord
#accessed through bcrypt which allows us to use the authenticate method
  has_secure_password
  validates :email,  presence: true, uniqueness: true
 #this method adds the password and password confirmation attributes to the model and expects the model to have a string field named password_digest while adding validations that require matching the password and password confimation attributes on creation.
  has_many :shoes
  #has_many :designers






end
