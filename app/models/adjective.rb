class Adjective < ActiveRecord::Base
	has_many :mto_ms
	has_many :cohortions, through :mto_ms
end
