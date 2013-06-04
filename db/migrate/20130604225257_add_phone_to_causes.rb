class AddPhoneToCauses < ActiveRecord::Migration
  def change
    add_column :causes, :cause_phone, :string
    add_index :causes, :cause_phone
  end
end
