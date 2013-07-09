class StaffDepartment < ActiveRecord::Base
	has_many :staffs
	   attr_accessible :name, :departemnt_alias, :department_code, :description, :status, :remarks
	validates_presence_of :name, :departemnt_alias, :department_code
	validates :name, :length=>{:maximum=>40}
	validates :department_code, :length=>{:maximum=>15}

end
