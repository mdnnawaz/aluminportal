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

ActiveRecord::Schema.define(version: 20170626150458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.string "current"
    t.boolean "is_placed"
    t.string "comname"
    t.string "comaddr"
    t.string "desig"
    t.integer "exp"
    t.boolean "abroad"
    t.string "univ"
    t.string "course"
    t.string "starcompany"
    t.string "staraddr"
    t.string "commun"
    t.string "mobile"
    t.string "curmail"
    t.string "linked_id"
    t.string "areaofinterset"
    t.string "contribute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rollno"
    t.string "regno"
    t.date "dob"
    t.index ["dob"], name: "index_students_on_dob", unique: true
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["regno"], name: "index_students_on_regno", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

end
