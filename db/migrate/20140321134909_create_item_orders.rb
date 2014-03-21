class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.string :serial
      t.integer :cart_id
      t.integer :item_id
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
