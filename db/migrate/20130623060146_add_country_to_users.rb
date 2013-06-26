class AddCountryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usercountry, :string
  end
end
