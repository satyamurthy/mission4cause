class AddAttachmentAvatarToMissionaries < ActiveRecord::Migration
  def self.up
    change_table :missionaries do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :missionaries, :avatar
  end
end
