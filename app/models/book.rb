class Book < ApplicationRecord
	
	validates :title, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed"}
	validates :title, presence: true
	validates :pages, numericality: { greater_than: 0 }
	validates :cover, presence: true
end
