class Line < ActiveRecord::Base
	belongs_to :lot 
	 belongs_to :order
end
