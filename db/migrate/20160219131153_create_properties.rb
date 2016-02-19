class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :building 
      t.string :street
      t.string :city
      t.string :county
      t.integer :rent
      t.integer :num_baths
      t.boolean :rent_allowance
      t.boolean :ptrb
      t.timestamps null: false
    end
  end
end
