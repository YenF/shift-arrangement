class ShiftColumns < ActiveRecord::Migration
  def change
  	add_column :people, :AB_4, :boolean
	add_column :people, :AB_14, :boolean
	rename_column :people, :ID, :with_whom
  end
end
