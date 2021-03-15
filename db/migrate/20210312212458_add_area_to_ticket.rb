class AddAreaToTicket < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :area, :integer
  end
end
