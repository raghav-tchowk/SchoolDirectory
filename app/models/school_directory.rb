class SchoolDirectory < ActiveRecord::Base
   attr_accessible :name, :address_line1, :address_line2, :city, :state, :pincode, :webaddress, :email_id, :landline_no1, :landline_no2, :fax_no1, :fax_no2, :mobile_no1, :mobile_no2, :affliated, :affliated_to_board, :established_year, :classe, :medium

	validates_presence_of :name, :address_line1, :city, :state, :pincode, :webaddress, :email_id, :landline_no1, :fax_no1, :mobile_no1, :established_year, :classe, :medium

 EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 validates :email_id, :format => EMAIL_REGEX
 validates :webaddress, :format => /^[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 #validates :email_id, :format => EMAIL_REGEX

 validates :mobile_no1, :length => { :maximum => 10 }, :format => /^[0-9]{10}$/
 #validates :mobile_no2, :format => /^[0-9]{10}$/
	validates :pincode, :length => { :maximum => 10 }
	validates :landline_no1, :length => { :maximum => 12 }
	#validates :landline_no2, :length => { :maximum => 12 }, :format => /^[0-9]$/
	validates :fax_no1, :length => { :maximum => 12 }
	#validates :fax_no2, :length => { :maximum => 12 }, :format => /^[0-9]$/
	validates :established_year, :length => { :maximum => 4 }

end
#i can't leave out the field if some validations are applied 
#<!--
#<%= #how to add conditional table rows and data, how to make a multiple-select-dropdownmenu, how to display a range in reverse order %> -->