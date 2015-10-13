class Post < ActiveRecord::Base
  attr_accessor :image, :remote_image_url

  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  mount_uploader :image, ImageUploader
end
