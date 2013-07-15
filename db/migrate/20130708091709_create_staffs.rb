class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
    	


    	t.references "staff_category"
    	t.references "staff_department"
    	t.string "first_name"
    	t.string "last_name"
    	t.string "staff_number"
    	t.string "gender"
    	t.date "joining_date"
    	t.string "qualification"
    	t.string "experience_detail"
    	t.string "experience_year"
    	t.date "date_of_birth"
    	t.string "blood_group"
    	t.string "home_address_line1"
    	t.string "home_address_line2"
    	t.string "home_city"
    	t.string "home_state"
    	t.integer "home_pincode"
    	t.integer "home_phone1"
    	t.integer "home_phone2"
    	t.integer "mobile_no1"
    	t.integer "mobile_no2" 
    	t.string "email_id1"
    	t.string "email_id2"
    	t.string "marital_status"
    	t.string "photo"
    	t.string "last_position_held"
    	t.string "moved_from"
    	t.string "remarks"
    	t.boolean "is_department_admin"



      t.timestamps
    end
    #add_index("staff_categories","staff_category_id" )
    #add_index("staff_departments","staff_department_id" )
  end
end
