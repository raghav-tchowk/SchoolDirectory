class Staff < ActiveRecord::Base
	belongs_to :staff_category 
	belongs_to :staff_department 
	#sanitize_for_mass_assignment
	attr_accessible :staff_category_id, :staff_department_id, :first_name, :last_name, :staff_number, :gender, :joining_date, :qualification, :experience_detail, :experience_year, :date_of_birth, :blood_group, :home_address_line1, :home_address_line2, :home_city, :home_state, :home_pincode, :home_phone1, :home_phone2, :mobile_no1, :mobile_no2, :email_id1, :email_id2, :marital_status, :photo, :last_position_held, :moved_from, :remarks, :is_department_admin

	validates_presence_of :staff_category_id, :staff_department_id, :first_name, :staff_number, :gender, :joining_date, :qualification, :experience_year, :date_of_birth, :home_address_line1, :home_city, :home_state, :home_pincode, :home_phone1,  :mobile_no1, :email_id1, :marital_status


	validates :mobile_no1, :length => { :maximum => 10 }, :format => /^[0-9]{10}$/
	validates :mobile_no2, :format => /^[0-9]{10}$/, :length => { :maximum => 10}, :allow_nil  => true
	validates :home_pincode, :length => { :maximum => 10 }
	validates :home_phone1, :length => {:minimum =>7, :maximum => 12 }
	validates :home_phone2, :length => {:minimum =>7, :maximum => 12 }, :allow_nil  => true
	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 	validates :email_id1, :format => EMAIL_REGEX
 	#validates :email_id2, :format => EMAIL_REGEX, :length=>{:maximum=>100}, :allow_nil => true

end
