class Book < ApplicationRecord
	
	# Associations

	has_many :authors, inverse_of: :book

	belongs_to :author, inverse_of: :books, dependent: :destroy, foreign_key: "author_id"

	belongs_to :publisher_house, foreign_key: "publisher_house_id"

	# Validations

	validates :title, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed"}
	validates :title, presence: true
	validates :pages, numericality: { greater_than: 0, message: "NOT ALOWWED NEGATIVE NUMBERS!" }
	# validates :cover, presence: true, format: { with: /\A[www]+[A-Za-z0-9._%+-]+\.[A-Za-z]+\z/, message: "INCORRECT FORMAT! MUST BE AN URL" }


end
