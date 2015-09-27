class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.integer :badge_number
      t.string :location_in_department
      t.datetime :date_initial_certification
      t.datetime :date_recertification

      t.timestamps null: false
    end
  end
end
