class AddIndexToLandlordsEmail < ActiveRecord::Migration
  def change
  	add_index :landlords, :email, unique: true
  end
end
