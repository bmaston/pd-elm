class CreateTazerDevices < ActiveRecord::Migration
  def change
    create_table :tazer_devices do |t|
      t.integer :serial_number
      t.string :model
      t.datetime :date_received
      t.string :location

      t.timestamps null: false
    end
  end
end
