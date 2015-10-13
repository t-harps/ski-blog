class Post < ActiveRecord::Base
  attr_accessor :image, :remote_image_url
  has_many :taggings
  has_many :tags, through: :taggings

  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :image, ImageUploader

	def tag_list
 		tags.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
	  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
	  self.tags = new_or_found_tags
	end

end
