class LineItem < ActiveRecord::Base
	belongs_to :lot 
    belongs_to :cart  
    belongs_to :order
end
