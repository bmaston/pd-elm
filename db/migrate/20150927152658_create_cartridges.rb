class CreateCartridges < ActiveRecord::Migration
  def change
    create_table :cartridges do |t|
      t.integer :serial_num
      t.string :model
      t.datetime :date_received
      t.string :location

      t.timestamps null: false
    end
  end
end
