class AddPublisherHouseIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :publisher_house_id, :integer
  end
end
