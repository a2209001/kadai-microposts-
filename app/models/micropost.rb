class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum:255 }
  
  #自分をお気に入りにしたuserへの参照
  has_many :favorites
  has_many :favoriting_users, through: :favorites, source: :user
  
end
