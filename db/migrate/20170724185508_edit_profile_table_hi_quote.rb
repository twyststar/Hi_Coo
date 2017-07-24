class EditProfileTableHiQuote < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :hi_qoute, :string
    add_column :profiles, :hi_quote, :string
  end
end
