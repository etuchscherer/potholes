class CreatePotholes < ActiveRecord::Migration
  def change
    create_table :potholes do |t|
      t.string :location
      t.string :status
      t.string :postal_code
      t.integer :reporter_id
      t.integer :official_id
      t.boolean :active

      t.timestamps
    end
  end
end
