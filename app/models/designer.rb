class Designer < ApplicationRecord
  has_many :shoes
  has_many :users, through: :shoes
  has_many :handbags



  def designer_attributes=(designer)
    self.designer = Designer.find_or_create_by(id: designer_id)
    self.designer.update(designer)
  end










end
