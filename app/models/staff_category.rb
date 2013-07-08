class StaffCategory < ActiveRecord::Base
	has_many :staffs
   attr_accessible :name, :description, :status

end
