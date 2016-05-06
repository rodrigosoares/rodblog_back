class Project < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: :slugged

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, presence: true
end
