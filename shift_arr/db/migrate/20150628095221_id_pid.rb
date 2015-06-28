class IdPid < ActiveRecord::Migration
  def change
  	add_column :people, :pid, :string
  end
end
