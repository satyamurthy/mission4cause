class AddTwitterToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :misstwitter, :string
  end
end
