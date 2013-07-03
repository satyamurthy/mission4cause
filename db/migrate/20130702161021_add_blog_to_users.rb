class AddBlogToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userblog, :string
  end
end
