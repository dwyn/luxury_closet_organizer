class Designer < ApplicationRecord
  has_many :shoes
  has_many :users, through: :shoes
end
