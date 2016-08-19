class Order < ActiveRecord::Base
	belongs_to :line_item
	belongs_to :cart
	belongs_to :lot
	 has_many :lines
end
