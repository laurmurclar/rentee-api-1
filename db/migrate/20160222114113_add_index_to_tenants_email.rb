class AddIndexToTenantsEmail < ActiveRecord::Migration
  def change
  	add_index :tenants, :email, unique: true
  end
end
