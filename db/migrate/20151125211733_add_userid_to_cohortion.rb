class AddUseridToCohortion < ActiveRecord::Migration
  def change
  	add_column :cohortions, :cohort_user_id, :int
  end
end
