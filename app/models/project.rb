class Project < ApplicationRecord
  has_many_attached :photos

  extend FriendlyId
  friendly_id :name, use: :slugged

  def flex_direction(index)
    return "odd" if index.odd?
  end

  def right_or_left(index)
    index.odd? ? "left" : "right"
  end

  def right_or_left_fade(index)
    index.odd? ? "right" : "left"
  end

  def get_first_item(index)
    return "active" if index == 0
  end
end
