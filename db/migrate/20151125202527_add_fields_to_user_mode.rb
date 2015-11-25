class AddFieldsToUserMode < ActiveRecord::Migration
  def change
	add_column :users, :first, :string
	add_column :users, :last, :string
	add_column :users, :about, :string
	add_column :users, :img_url, :string
  end
end
