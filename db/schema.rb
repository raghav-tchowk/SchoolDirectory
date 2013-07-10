# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130710065847) do

  create_table "school_directories", :force => true do |t|
    t.string   "name",               :limit => 45
    t.string   "address_line1",      :limit => 145
    t.string   "address_line2",      :limit => 145
    t.string   "city",               :limit => 20
    t.string   "state",              :limit => 25
    t.integer  "pincode",            :limit => 10
    t.string   "webaddress"
    t.string   "email_id",           :limit => 145
    t.integer  "landline_no1",       :limit => 12
    t.integer  "landline_no2",       :limit => 12
    t.integer  "fax_no1",            :limit => 10
    t.integer  "fax_no2",            :limit => 10
    t.integer  "mobile_no1",         :limit => 10
    t.integer  "mobile_no2",         :limit => 10
    t.boolean  "affliated"
    t.string   "affliated_to_board"
    t.integer  "established_year",   :limit => 4
    t.string   "classe",             :limit => 20
    t.string   "medium",             :limit => 20
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "staff_categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "staff_departments", :force => true do |t|
    t.string   "name"
    t.string   "departemnt_alias"
    t.string   "department_code"
    t.string   "description"
    t.boolean  "status"
    t.string   "remarks"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "staffs", :force => true do |t|
    t.integer  "staff_category_id"
    t.integer  "staff_department_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "staff_number"
    t.string   "gender"
    t.datetime "joining_date"
    t.string   "qualification"
    t.string   "experience_detail"
    t.string   "experience_year"
    t.datetime "date_of_birth"
    t.string   "blood_group"
    t.string   "home_address_line1"
    t.string   "home_address_line2"
    t.string   "home_city"
    t.string   "home_state"
    t.integer  "home_pincode"
    t.integer  "home_phone1"
    t.integer  "home_phone2"
    t.integer  "mobile_no1"
    t.integer  "mobile_no2"
    t.string   "email_id1"
    t.string   "email_id2"
    t.string   "marital_status"
    t.string   "photo"
    t.string   "last_position_held"
    t.string   "moved_from"
    t.string   "remarks"
    t.boolean  "is_department_admin"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "sticky_notes", :force => true do |t|
    t.string   "title"
    t.string   "subject"
    t.datetime "target_date"
    t.boolean  "remind_me"
    t.string   "priority"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
