class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :phone_number
      t.string :email
      t.string :category
      t.string :details

      t.timestamps
    end
  end
end
