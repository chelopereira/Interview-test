class Author < ApplicationRecord

	# Associations

	belongs_to :book, inverse_of: :authors, foreign_key: "book_id"

	has_many :books, inverse_of: :author
	
	# Validations 

	validates :first_name, presence: true

	
end
