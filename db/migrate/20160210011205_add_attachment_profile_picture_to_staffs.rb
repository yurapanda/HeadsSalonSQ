class AddAttachmentProfilePictureToStaffs < ActiveRecord::Migration
  def self.up
    change_table :staffs do |t|
      t.attachment :profile_picture
    end
  end

  def self.down
    remove_attachment :staffs, :profile_picture
  end
end
