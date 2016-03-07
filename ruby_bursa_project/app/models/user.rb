class User < ActiveRecord::Base
	has_secure_password

	has_many :petitions

	validates_uniqueness_of :email
	validates 							:first_name, :last_name, presence: true
end
