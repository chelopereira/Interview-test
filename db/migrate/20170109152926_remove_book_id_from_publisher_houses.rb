class RemoveBookIdFromPublisherHouses < ActiveRecord::Migration[5.0]
  def change
    remove_column :publisher_houses, :book_id, :integer
  end
end
