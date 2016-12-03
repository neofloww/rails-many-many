class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :appointments_count, default: 0
      t.timestamps
    end
  end
end
