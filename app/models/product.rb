class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_at, :image
  mount_uploader :image, ImageUploader
  scope :unreleased, where(:price => nil)

end
