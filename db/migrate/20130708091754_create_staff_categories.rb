class CreateStaffCategories < ActiveRecord::Migration
  def change
    create_table :staff_categories do |t|
    	


        t.string "name"
        t.string "description"
        t.boolean "status"

      t.timestamps
    end
  end
end
