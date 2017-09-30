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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170928015619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benefits", force: :cascade do |t|
    t.integer  "listings_id"
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listings_id"], name: "index_benefits_on_listings_id", using: :btree
  end

  create_table "college_majors", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "listings_id"
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listings_id"], name: "index_college_majors_on_listings_id", using: :btree
    t.index ["users_id"], name: "index_college_majors_on_users_id", using: :btree
  end

  create_table "education_levels", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "listings_id"
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listings_id"], name: "index_education_levels_on_listings_id", using: :btree
    t.index ["users_id"], name: "index_education_levels_on_users_id", using: :btree
  end

  create_table "industries", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_industries_on_user_id", using: :btree
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "user_id",             null: false
    t.string   "job_title",           null: false
    t.integer  "max_starting_salary"
    t.integer  "publish_status"
    t.string   "description",         null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_listings_on_user_id", using: :btree
  end

  create_table "matchitems", force: :cascade do |t|
    t.integer  "qualification_id"
    t.string   "name",             null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "requirement_id"
    t.index ["qualification_id"], name: "index_matchitems_on_qualification_id", using: :btree
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_qualifications_on_user_id", using: :btree
  end

  create_table "requirements", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "listing_id"
    t.index ["listing_id"], name: "index_requirements_on_listing_id", using: :btree
  end

  create_table "type_of_employments", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "listings_id"
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["listings_id"], name: "index_type_of_employments_on_listings_id", using: :btree
    t.index ["users_id"], name: "index_type_of_employments_on_users_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "requirements", "listings"
end
