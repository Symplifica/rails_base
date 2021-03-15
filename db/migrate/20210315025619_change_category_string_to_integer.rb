class ChangeCategoryStringToInteger < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :category
    add_column :tickets, :category, :integer
  end
end
