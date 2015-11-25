class AddUseridToCohortionAdjectives < ActiveRecord::Migration
  def change
  	add_column :cohort_adjectives, :user_id, :int
  end
end
