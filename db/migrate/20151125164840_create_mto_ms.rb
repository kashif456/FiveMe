class CreateMtoMs < ActiveRecord::Migration
  def change
    create_table :mto_ms do |t|
      t.integer :cohortion_id
      t.integer :adjective_id

      t.timestamps null: false
    end
  end
end
