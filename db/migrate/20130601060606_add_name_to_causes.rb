class AddNameToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_name, :string
    add_index :causes, :cause_name
  end
end
