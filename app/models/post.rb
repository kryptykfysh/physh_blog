class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  validates :title, 	presence: true,
  										length: { maximum: 60, minimum: 5 }
  validates :content, presence: true,
  										length: { maximum: 10000, minimum: 5 }

  belongs_to :user
end
