class AddImageToLots < ActiveRecord::Migration
  def change
    add_column :lots, :image, :string
  end
end
