class AddEmailToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_email, :string
  end
end
