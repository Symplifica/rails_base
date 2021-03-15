class AddToStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :statuses, :kind, :integer, default: 0
  end
end
