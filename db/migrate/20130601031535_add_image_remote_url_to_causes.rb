class AddImageRemoteUrlToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :image_remote_url, :string
  end
end
