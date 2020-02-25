class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :capacity
      t.string :until
      t.string :quantity, null: false
      t.string :place, null: false
      t.string :deliverydate, null: false
      t.timestamps
    end
  end
end
