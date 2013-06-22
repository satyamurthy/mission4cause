class AddLongDescriptionToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :long_description, :text, :limit => nil
  end
end
