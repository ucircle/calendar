class Event < ApplicationRecord
  has_one_attached :image
  attr_accessor :selected_color

  validates :title, presence: true
end
