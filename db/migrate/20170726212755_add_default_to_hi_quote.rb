class AddDefaultToHiQuote < ActiveRecord::Migration[5.1]
  def change
    change_column :profiles, :hi_quote_one, :string, :default =>  'No'
    change_column :profiles, :hi_quote_two, :string, :default => 'Hi-Quote'
    change_column :profiles, :hi_quote_three, :string, :default => 'Entered' 
  end
end
