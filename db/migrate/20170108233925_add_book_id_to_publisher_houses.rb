class AddBookIdToPublisherHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :publisher_houses, :book_id, :integer
  end
end
