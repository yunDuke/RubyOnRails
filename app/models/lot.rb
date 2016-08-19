class Lot < ActiveRecord::Base
	
	geocoded_by :title
	after_validation :geocode
    mount_uploader :image, ImageUploader
    has_many :line_items  
     has_many :lines
  
   
belongs_to :order
end
