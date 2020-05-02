class Project < ApplicationRecord
  has_many_attached :photos

  extend FriendlyId
  friendly_id :name, use: :slugged

  def get_first_item(index)
    return "active" if index == 1
  end
end
