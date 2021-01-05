class CreateGearTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :weight
      t.integer :quantity_owned
      t.boolean :essential
    end
  end
end
