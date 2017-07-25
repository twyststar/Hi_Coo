class ChangeHiQuoteColumnOnProfile < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :hi_quote, :string
    add_column :profiles, :hi_quote_one, :string
    add_column :profiles, :hi_quote_two, :string
    add_column :profiles, :hi_quote_three, :string
  end
end
