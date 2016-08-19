class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :lot_id
      t.integer :order_id

      t.timestamps
    end
  end
end
