class CreateCohortAdjectives < ActiveRecord::Migration
  def change
    create_table :cohort_adjectives do |t|
      t.string :adjective

      t.timestamps null: false
    end
  end
end
