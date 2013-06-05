class AddVideoToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_video, :string
  end
end
