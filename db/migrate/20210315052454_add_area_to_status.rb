class AddAreaToStatus < ActiveRecord::Migration[6.1]
  def change
    remove_column :statuses, :kind
    add_reference :statuses, :area, index: true
  end
end
