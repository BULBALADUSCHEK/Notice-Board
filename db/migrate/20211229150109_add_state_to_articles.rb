class AddStateToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :state, :integer
  end
end
