class AddMissaddressToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :missaddress, :string
  end
end
