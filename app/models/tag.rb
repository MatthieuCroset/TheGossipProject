class Tag < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  has_many :to_tags
  has_many :gossips, through: :links_tags
end