class AddPictureToHicoos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :hicoos do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :hicoos, :pic
  end
end
