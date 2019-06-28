class Handbag < ApplicationRecord
  belongs_to :user
  belongs_to :designer
end
