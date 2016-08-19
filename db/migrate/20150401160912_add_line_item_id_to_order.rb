class AddLineItemIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :line_item, :integer
  end
end
