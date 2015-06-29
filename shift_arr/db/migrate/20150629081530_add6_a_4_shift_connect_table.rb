class Add6A4ShiftConnectTable < ActiveRecord::Migration
  def change
  	add_column :people, :A6_4, :boolean
  	add_column :people, :shift_id, :integer
  	add_index :people, :shift_id
  end
end
