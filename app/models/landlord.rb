class Landlord < ActiveRecord::Base
	before_save {email.downcase!}
	validates :f_name, presence: true, length: {maximum: 30}
	validates :l_name, presence: true, length: {maximum: 30}
	validates :phone, presence: true, length: {minimum: 9, maximum:20}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {minimum: 10, maximum: 255},
						format: { with: VALID_EMAIL_REGEX }, 
						uniqueness: { case_sensitive: false}
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end