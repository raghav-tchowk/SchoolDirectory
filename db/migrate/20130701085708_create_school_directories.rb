class CreateSchoolDirectories < ActiveRecord::Migration
  def change
	    create_table :school_directories do |t|

	    	t.string "name", :limit=>45
	    	t.string "address_line1", :limit=>145
	    	t.string "address_line2", :limit=>145
	    	t.string "city", :limit=>20
	    	t.string "state", :limit=>25
	    	t.integer "pincode", :limit=>10
	    	t.string "webaddress"
	    	t.string "email_id", :limit=>145
	    	t.integer "landline_no1", :limit=>12
	    	t.integer "landline_no2", :limit=>12
	    	t.integer "fax_no1", :limit=>10
	    	t.integer "fax_no2", :limit=>10
	    	t.integer "mobile_no1", :limit=>10
	    	t.integer "mobile_no2", :limit=>10
	    	t.boolean "affliated"
	    	t.string "affliated_to_board"
	    	t.integer "established_year", :limit=>4
	    	t.string "classe", :limit=>20
	    	t.string "medium", :limit=>20
	    	
	    	



	      t.timestamps
	    end
	    #add_index("school_directories")
	end
end
