class AddCountryToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :country, :string
    add_index :causes, :country
  end
end
