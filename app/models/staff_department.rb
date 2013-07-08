class StaffDepartment < ActiveRecord::Base
	has_many :staffs
	   attr_accessible :name, :departemnt_alias, :department_code, :description, :status, :remarks

end
