class AddAttachmentImageToCauses < ActiveRecord::Migration
  def self.up
    change_table :causes do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :causes, :image
  end
end
