class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :carplate
      t.string :time
      t.string :genre
      t.integer :amount
      t.integer :cost

      t.timestamps
    end
  end
end
