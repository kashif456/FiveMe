class CreateCohortions < ActiveRecord::Migration
  def change
    create_table :cohortions do |t|
      t.string :first
      t.string :last
      t.text :about

      t.timestamps null: false
    end
  end
end
