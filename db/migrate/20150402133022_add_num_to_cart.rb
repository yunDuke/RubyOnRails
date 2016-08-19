class AddNumToCart < ActiveRecord::Migration
  def change
    add_column :carts, :rest, :integer
  end
end
