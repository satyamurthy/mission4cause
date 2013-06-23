class AddMystoryToMissionaries < ActiveRecord::Migration
  def change
    add_column :missionaries, :missstory, :text, :limit => nil
  end
end
