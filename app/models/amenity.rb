class Amenity < ActiveRecord::Base
	belongs_to :property

	validates :name, length: {minimum: 4, maximum: 20}, presence: true
	validates :property_id, presence: true
end