class AddLongDescriptionToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :long_description, :string
  end
end
