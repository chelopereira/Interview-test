class Book < ApplicationRecord
	
	# Associations

	has_many :authors, inverse_of: :book

	belongs_to :author, inverse_of: :books, dependent: :destroy, foreign_key: "author_id"

	has_one :publisher_house, inverse_of: :book

	# Validations

	validates :title, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed"}
	validates :title, presence: true
	validates :pages, numericality: { greater_than: 0 }
	validates :cover, presence: true


end
