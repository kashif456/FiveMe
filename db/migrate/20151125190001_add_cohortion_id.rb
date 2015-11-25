class AddCohortionId < ActiveRecord::Migration
  def change
  	add_column :cohort_adjectives, :cohortion_id, :int
  end
end
