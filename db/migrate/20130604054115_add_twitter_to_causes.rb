class AddTwitterToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_twitter, :string
  end
end
