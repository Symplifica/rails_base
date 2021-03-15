class AddStatusToTicket < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :status, index: true
  end
end
