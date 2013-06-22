class AddNameToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :missname, :string
  end
end
