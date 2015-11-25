class Cohortion < ActiveRecord::Base
<<<<<<< HEAD
=======
	has_many :CohortAdjective, dependent: :destroy
	#has_many :mto_ms

	def full_name
		"#{first} #{last}"
	end

>>>>>>> 789fe3a756d44b9ddcf451ebd7fe555de6983e27
end
