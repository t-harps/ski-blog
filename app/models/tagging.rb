class Tagging < ActiveRecord::Base
  belongs_to :tag, dependent: :destroy
  belongs_to :post, dependent: :destroy
end
