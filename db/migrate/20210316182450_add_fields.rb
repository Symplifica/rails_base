class AddFields < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :sid_worker, :string
    remove_reference :tickets, :area
    add_reference :categories, :area, index: true
    add_reference :agents, :area, index: true
  end
end
