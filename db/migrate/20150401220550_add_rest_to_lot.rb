class AddRestToLot < ActiveRecord::Migration
  def change
    add_column :lots, :rest, :integer
  end
end
