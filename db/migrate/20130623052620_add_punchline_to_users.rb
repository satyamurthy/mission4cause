class AddPunchlineToUsers < ActiveRecord::Migration
  def change
    add_column :users, :punchline, :string
  end
end
