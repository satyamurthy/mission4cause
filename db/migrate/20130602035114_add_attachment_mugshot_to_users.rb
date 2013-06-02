class AddAttachmentMugshotToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :mugshot
    end
  end

  def self.down
    drop_attached_file :users, :mugshot
  end
end
