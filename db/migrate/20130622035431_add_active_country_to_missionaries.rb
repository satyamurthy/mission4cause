class AddActiveCountryToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :misscountry, :string
  end
end
