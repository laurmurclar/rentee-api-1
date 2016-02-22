class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :f_name
      t.string :l_name
      t.string :phone
      t.string :email
      t.string :password_digest
      t.boolean :smoker
      t.boolean :pet_owner
      t.boolean :refs_avail
      t.string :occupation
      t.text :bio
      t.timestamps null: false
    end
  end
end
