class ChangeCol < ActiveRecord::Migration
  def change
  	remove_column :people, :bio, :string
  	remove_column :people, :birthday, :string
  	add_column :people, :ID, :string
  end
end
