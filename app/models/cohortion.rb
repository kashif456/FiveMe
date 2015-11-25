class Cohortion < ActiveRecord::Base
	def full_name
		"#{first} #{last}"
	end
end
