class CohortAdjective < ActiveRecord::Base
	belongs_to :Cohortion
	validates :adjective, presence: true, length: { maximum: 140 }
	#validates :cohortion_id, presence: true
end
