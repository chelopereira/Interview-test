class PublisherHouse < ApplicationRecord

	# Associations

	belongs_to :book, inverse_of: :publisher_house, foreign_key: "book_id"	

	# Validations

	validates :name, uniqueness: true
	validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
	validates :name, presence: true
	
end
