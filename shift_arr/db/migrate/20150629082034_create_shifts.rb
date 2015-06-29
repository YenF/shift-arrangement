class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
		t.integer :1A
		t.integer :1B
		t.integer :1C		
		t.integer :2A
		t.integer :2B
		t.integer :2C		
		t.integer :3A
		t.integer :3B
		t.integer :3C		
		t.integer :4A
		t.integer :4B
		t.integer :4C		
		t.integer :5A
		t.integer :5B
		t.integer :5C		
		t.integer :6A
		t.integer :6B
		t.integer :6C		
		# 4 as AB_4, 14 as AB_4, 0 as no shift
      t.timestamps null: false
    end
  end
end
