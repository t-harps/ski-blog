class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
