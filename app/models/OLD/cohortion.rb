class Cohortion < ActiveRecord::Base
	belongs_to :User
	
	has_many :CohortAdjective, dependent: :destroy
	accepts_nested_attributes_for :CohortAdjective

	#has_many :mto_ms

	def full_name
		"#{first} #{last}"
	end
end
