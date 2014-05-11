class AddAttachmentAvatarToAccounts < ActiveRecord::Migration
  def self.up
    change_table :accounts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :accounts, :avatar
  end
end
