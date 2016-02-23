class Property_Tenant < ActiveRecord::Base
	has_many :properties
	has_many :tenants
end