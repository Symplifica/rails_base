class ChangeColumsnAndAddReferencesToTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :area
    remove_column :tickets, :category
    add_reference :tickets, :category, index: true
    add_reference :tickets, :agent, index: true
    add_reference :tickets, :area, index: true
  end
end
