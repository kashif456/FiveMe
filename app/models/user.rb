class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	  devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :trackable, :validatable

  	has_one :Cohortion


	#has_many :active_relationships,  	class_name:  "Relationship",
	#                               		foreign_key: "cohortion_id",
	#                               		dependent:   :destroy

    #has_many :following, through: :active_relationships,  source: :cohortion_id
  	#has_many :CohortAdjective, dependent: :destroy


  	def full_name
		"#{first} #{last}"
	end
end
