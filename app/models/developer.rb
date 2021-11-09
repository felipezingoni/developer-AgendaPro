class Developer < ApplicationRecord
  has_one_attached :image
  validates :name, :position, :description, presence: true
end
