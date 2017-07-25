class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :hicoo_id
      t.string :content
      t.string :author
      
      t.timestamps
    end
  end
end
