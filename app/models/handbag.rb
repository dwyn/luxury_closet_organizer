class Handbag < ActiveRecord::Base
  belongs_to :user
  belongs_to :designer
end
