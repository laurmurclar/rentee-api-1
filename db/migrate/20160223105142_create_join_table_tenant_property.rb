class CreateJoinTableTenantProperty < ActiveRecord::Migration
  def change
    create_join_table :tenants, :properties do |t|
      t.index :tenant_id
      t.index :property_id
    end
  end
end
