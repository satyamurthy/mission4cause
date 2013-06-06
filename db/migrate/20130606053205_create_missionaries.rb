class CreateMissionaries < ActiveRecord::Migration
  def change
    create_table :missionaries do |t|
      t.string :missbio

      t.timestamps
    end
  end
end
