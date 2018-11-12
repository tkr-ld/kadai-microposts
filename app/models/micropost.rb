class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favoriterelationships
  has_many :favoriteusers, through: :favoriterelationships, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
