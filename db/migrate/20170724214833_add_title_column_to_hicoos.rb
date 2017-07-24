class AddTitleColumnToHicoos < ActiveRecord::Migration[5.1]
  def change
    add_column :hicoos, :title, :string
  end
end
