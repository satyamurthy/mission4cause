class AddFacebookToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :missfacebook, :string
  end
end
