class CreateGearactivityTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gearactivities do |t|
      t.references :gear, foreign_key: true
      t.references :activity, foreign_key: true
      t.integer :gear_quantity_needed
    end
  end
end
