class CreateHicoos < ActiveRecord::Migration[5.1]
  def change
    create_table :hicoos do |t|
      t.string :line_one
      t.string :line_two
      t.string :line_three
      
      t.string :author
      t.integer :profile_id

      t.timestamps
    end
  end
end
