class Project < ApplicationRecord
  has_many_attached :photos

  def get_first_item(index)
    return "active" if index == 0
  end
end
