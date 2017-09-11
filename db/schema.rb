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

ActiveRecord::Schema.define(version: 20170911231254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_items", force: :cascade do |t|
    t.string   "match_item",       null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "qualification_id"
    t.index ["qualification_id"], name: "index_match_items_on_qualification_id", using: :btree
  end

  create_table "qualifications", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "match_item_id"
    t.integer  "user_id"
    t.index ["match_item_id"], name: "index_qualifications_on_match_item_id", using: :btree
    t.index ["user_id"], name: "index_qualifications_on_user_id", using: :btree
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
    t.integer  "qualifications_id"
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["qualifications_id"], name: "index_users_on_qualifications_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "match_items", "qualifications"
  add_foreign_key "qualifications", "match_items"
  add_foreign_key "qualifications", "users"
  add_foreign_key "users", "qualifications", column: "qualifications_id"
end
