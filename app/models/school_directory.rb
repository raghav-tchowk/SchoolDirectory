class SchoolDirectory < ActiveRecord::Base
   attr_accessible :name, :address_line1, :address_line2, :city, :state, :pincode, :webaddress, :email_id, :landline_no1, :landline_no2, :fax_no1, :fax_no2, :mobile_no1, :mobile_no2, :affliated, :affliated_to_board, :established_year, :classe, :medium

	validates_presence_of :name, :address_line1, :city, :state, :pincode, :webaddress, :email_id, :landline_no1, :fax_no1, :mobile_no1, :established_year, :classe, :medium

 EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 validates :email_id, :format => EMAIL_REGEX
 validates :webaddress, :format => /^[A-Z0-9.-]+\.[A-Z]{2,4}$/i
 #validates :email_id, :format => EMAIL_REGEX

 validates :mobile_no1, :length => { :maximum => 10 }, :format => /^[0-9]{10}$/
 validates :mobile_no2, :format => /^[0-9]{10}$/, :length => { :maximum => 10}, :allow_nil  => true
	validates :pincode, :length => { :maximum => 10 }
	validates :landline_no1, :length => {:minimum =>7, :maximum => 12 }
	validates :landline_no2, :length => {:minimum =>7, :maximum => 12 }, :allow_nil  => true
	validates :fax_no1, :length => {:minimum =>4, :maximum => 12 }
	validates :fax_no2, :length => {:minimum =>4, :maximum => 12 }, :allow_nil  => true
	validates :established_year, :length => {:minimum =>4, :maximum => 4 }

end
#i can't leave out the field if some validations are applied => resolved using (, :allow_nil  => true)
#<!--
#<%= #how to add conditional table rows and data, how to make a multiple-select-dropdownmenu => resolved using {:multiple=>true in new hash}, how to display a range in reverse order => resolved using <%h=(1600..2013).sort.reverse%> and then using h in f.select for range-->
#git init
#git add README.md
#git commit -m "first commit"
#git remote add origin https://github.com/raghav-tchowk/SchoolDirectory.git
#git push -u origin master











#http://gregdev.com.au/jquery/automatically-add-a-jquery-date-picker-to-an-input-box-with-a-specific-class/
#above is a source for adding jquery calender