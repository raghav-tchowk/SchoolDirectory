class StaffCategory < ActiveRecord::Base
	has_many :staffs
   attr_accessible :name, :description, :status
   validates :name, :length=>{:maximum=>40}, :presence=>"true"


end
