class Post < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: :slugged
  
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
end
