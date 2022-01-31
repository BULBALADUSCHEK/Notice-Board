class AddExpirationDateToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :expiration_date, :datetime
  end
end
