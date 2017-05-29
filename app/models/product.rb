class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :category

  def publish!
    self.is_hidden = false
    self.save
  end
end
