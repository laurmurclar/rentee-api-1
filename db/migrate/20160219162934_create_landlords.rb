class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :f_name
      t.string :l_name
      t.string :phone
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
