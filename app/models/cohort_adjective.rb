class CohortAdjective < ActiveRecord::Base
	belongs_to :User
	validates :adjective, presence: true, length: { maximum: 140 }
	#validates :cohortion_id, presence: true
end
