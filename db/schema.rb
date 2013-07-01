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

ActiveRecord::Schema.define(:version => 20130701085708) do

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

end
