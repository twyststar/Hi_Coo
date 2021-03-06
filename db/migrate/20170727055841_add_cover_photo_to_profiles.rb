class AddCoverPhotoToProfiles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :profiles do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :profiles, :cover
  end
end
