class AddUserIdToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :user_id, :integer
    add_index :missionaries, :user_id
  end
end
