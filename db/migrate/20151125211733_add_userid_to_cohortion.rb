class AddUseridToCohortion < ActiveRecord::Migration
  def change
  	add_column :cohortions, :user_id, :int
  end
end
