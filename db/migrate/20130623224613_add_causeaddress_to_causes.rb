class AddCauseaddressToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :causeaddress, :string
  end
end
