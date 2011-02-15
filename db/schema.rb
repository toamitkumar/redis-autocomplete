# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100305034116) do

  create_table "people", :force => true do |t|
    t.string  "person_type"
    t.integer "fmno"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "preferred_name"
    t.string  "individual_status"
    t.date    "hire_date"
    t.integer "vendor_id"
    t.string  "goc_office_name"
    t.string  "position_firmwide_name"
    t.string  "position_category"
    t.string  "gender"
    t.string  "email"
    t.string  "department_name"
    t.string  "voip"
    t.string  "mobile"
    t.string  "office"
    t.string  "location_office_name"
    t.string  "mckinsey_career_title"
    t.integer "office_country_access_code"
    t.integer "office_city_access_code"
    t.integer "mobile_country_access_code"
    t.integer "fax_country_access_code"
    t.integer "fax_city_access_code"
    t.integer "fax_phone_number"
    t.integer "person_id"
  end

end
