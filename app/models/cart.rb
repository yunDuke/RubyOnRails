class Cart < ActiveRecord::Base
	 has_many :line_items, dependent: :destroy  
	   def add_lot(lot_id)  
    current_item = line_items.find_by_lot_id(lot_id)  
    if current_item  
      current_item.quantity += 1  
    else  
      current_item = line_items.build(lot_id: lot_id)  
    end  
    current_item  
  end   
  belongs_to :order
end
