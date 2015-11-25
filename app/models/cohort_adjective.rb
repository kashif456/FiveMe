class CohortAdjective < ActiveRecord::Base
	belongs_to :cohortion
	validates :adjective, presence: true, length: { maximum: 140 }
	#validates :cohortion_id, presence: true
end
