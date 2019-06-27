class Designer < ActiveRecord::Base
  has_many :shoes, :handbags
  has_many :users, through: :shoes, :handbags
end
