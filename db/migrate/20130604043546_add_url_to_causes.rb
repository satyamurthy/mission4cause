class AddUrlToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_url, :string
  end
end
