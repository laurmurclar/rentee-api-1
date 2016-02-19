class Bed < ActiveRecord::Base
	belongs_to :property

	validates :type, presence: true, inclusion: { in: %w(single double bunk) }
	validates :property_id, presence: true
end