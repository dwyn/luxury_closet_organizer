class Shoe < ActiveRecord::Base
  belongs_to :user
  belongs_to :designer
end
