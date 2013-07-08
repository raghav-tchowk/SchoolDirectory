class Staff < ActiveRecord::Base
	belongs_to :staff_category 
	belongs_to :staff_department 

	attr_accessible :first_name, :last_name, :staff_number, :gender, :joining_date, :qualification, :experience_detail, :experience_year, :date_of_birth, :blood_group, :home_address_line1, :home_address_line2, :home_city, :home_state, :home_pincode, :home_phone1, :home_phone2, :mobile_no1, :mobile_no2, :email_id1, :email_id2, :marital_status, :photo, :last_position_held, :moved_from, :remarks, :is_department_admin
end
