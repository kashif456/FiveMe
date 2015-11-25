class Cohortion < ActiveRecord::Base
	def full_name
		"#{first} #{last}"
	end
	has_many :mto_ms
	has_many :adjectives, through :mto_ms
end
