class ChangeForeignKey < ActiveRecord::Migration
  def change
  	add_column :shifts, :person_id, :integer  	#for "shift" connects to "people"
  	add_index :shifts, :person_id
	remove_column :people, :shift_id
  end
end
