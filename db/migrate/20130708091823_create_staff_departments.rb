class CreateStaffDepartments < ActiveRecord::Migration
  def change
    create_table :staff_departments do |t|
    	
        t.string "name"
        t.string "departemnt_alias"
        t.string "department_code"
        t.string "description"
        t.boolean "status"
        t.string "remarks"

      t.timestamps
    end
    
    
  end
end
