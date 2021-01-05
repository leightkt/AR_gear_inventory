class CreateActivityTable < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
    end
  end
end
