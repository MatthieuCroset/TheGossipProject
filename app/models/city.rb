class City < ApplicationRecord
  validates :zipcode, presence: true, length: {maximum: 5}
    validates :name, presence: true
    has_many :users
end
