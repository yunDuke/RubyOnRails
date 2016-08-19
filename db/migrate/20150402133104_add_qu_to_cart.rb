class AddQuToCart < ActiveRecord::Migration
  def change
    add_column :carts, :qu, :integer
  end
end
