class AddDefaultToTitle < ActiveRecord::Migration[5.1]
  def change
    change_column :hicoos, :title, :string, :default => "Untitled"
  end
end
