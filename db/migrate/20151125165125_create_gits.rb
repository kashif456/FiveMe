class CreateGits < ActiveRecord::Migration
  def change
    create_table :gits do |t|
      t.string :pull

      t.timestamps null: false
    end
  end
end
