class AddProfileTable < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :hi_qoute
      t.integer :user_id

      t.timestamps
    end
  end
end
