class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
		t.integer :A1
		t.integer :B1
		
		t.integer :A2
		t.integer :B2
		
		t.integer :A3
		t.integer :B3
		
		t.integer :A4
		t.integer :B4
		
		t.integer :A5
		t.integer :B5
		
		t.integer :A6
		# 4 as AB_4, 14 as AB_4, 0 as no shift
      t.timestamps null: false
    end
    add_column :people, :arranged?, :boolean
  end
end
