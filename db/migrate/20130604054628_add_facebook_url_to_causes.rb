class AddFacebookUrlToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_facebook_url, :string
  end
end
