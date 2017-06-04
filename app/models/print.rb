class Print < ApplicationRecord
   mount_uploader :detail, DetailUploader
   belongs_to :product
end
