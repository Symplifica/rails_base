class AddRatingToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :rating, :string
    add_column :articles, :state, :integer, default: 0
  end
end
