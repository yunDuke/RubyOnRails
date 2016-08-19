class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :title
      t.string :description
      t.integer :num
      t.float :latitude
      t.float :longitude
      t.string :markerText

      t.timestamps
    end
  end
end
