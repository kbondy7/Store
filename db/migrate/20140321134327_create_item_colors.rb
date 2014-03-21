class CreateItemColors < ActiveRecord::Migration
  def change
    create_table :item_colors do |t|
      t.integer :color_id
      t.integer :item_id

      t.timestamps
    end
  end
end
