class User < ApplicationRecord
  validates :first_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true, length: {maximum: 140}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    has_secure_password
    validates :city_id, presence: true
    belongs_to :city 
    has_many :gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: 'PrivateMessage'
    has_many :received_messages, foreign_key: 'recipient_id', class_name: 'PrivateMessage'
    has_many :comment

    has_many :likes
end
