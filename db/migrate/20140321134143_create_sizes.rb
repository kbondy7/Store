class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :title

      t.timestamps
    end
  end
end
