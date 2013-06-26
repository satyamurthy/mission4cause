class AddHeartcausesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :heartcause, :string
  end
end
