class CreateMtoMs < ActiveRecord::Migration
  def change
    create_table :mto_ms do |t|
      t.belongs_to :cohortion, index: true
      t.belongs_to :adjective, index: true

      t.timestamps null: false
    end
  end
end
