class Designer < ActiveRecord::Base
  has_many :shoes
  has_many :users, through: :shoes
end
