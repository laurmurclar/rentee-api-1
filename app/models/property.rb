class Property < ActiveRecord::Base
	has_many :beds
	has_many :amenities

	validates :building, presence: true, length: {minimum: 4, maximum: 30}
	validates :street, presence: true, length: {minimum: 4, maximum: 30}
	validates :city, presence: true, length: {minimum: 4, maximum: 30}
	validates :county, presence: true, length: {minimum: 4, maximum: 30}
	validates :rent, numericality: {greater_than: 0, less_than: 10000}
	validates :num_baths, numericality: {greater_than: 0, less_than:11}
end
