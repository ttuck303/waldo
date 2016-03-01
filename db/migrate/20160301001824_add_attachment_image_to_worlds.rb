class AddAttachmentImageToWorlds < ActiveRecord::Migration
  def self.up
    change_table :worlds do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :worlds, :image
  end
end
