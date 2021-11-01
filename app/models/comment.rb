class Comment < ApplicationRecord
  validates :user_id, presence: true
  validates :gossip_id, presence: true
  validates :content, presence: true
  validates :like, presence:true
  belongs_to :user
  belongs_to :gossip
end