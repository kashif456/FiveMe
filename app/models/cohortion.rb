class Cohortion < ActiveRecord::Base
	has_many :CohortAdjective, dependent: :destroy
	#has_many :mto_ms

	def full_name
		"#{first} #{last}"
	end

end
