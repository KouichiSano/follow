class AddBookIdToFavorite < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :book_id, :string
  end
end
