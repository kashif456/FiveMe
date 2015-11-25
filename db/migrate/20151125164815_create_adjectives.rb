class CreateAdjectives < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.string :adjective

      t.timestamps null: false
    end
  end
end
