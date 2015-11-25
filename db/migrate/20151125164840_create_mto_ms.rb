class CreateMtoMs < ActiveRecord::Migration
  def change
    create_table :mto_ms do |t|
      t.string :cohortion_id
      t.string :adjective_id

      t.timestamps null: false
    end
  end
end
