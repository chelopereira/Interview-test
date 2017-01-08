class PublisherHouse < ApplicationRecord
	
	validates :name, uniqueness: true
	validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
	validates :name, presence: true
	
end
