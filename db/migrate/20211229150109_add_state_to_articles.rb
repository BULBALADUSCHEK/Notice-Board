class AddStateToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :state, :integer, default: 0, null: false
  end
end
