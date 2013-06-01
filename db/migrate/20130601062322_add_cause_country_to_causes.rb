class AddCauseCountryToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_country, :string
    add_index :causes, :cause_country
  end
end
