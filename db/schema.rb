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

ActiveRecord::Schema.define(version: 20170421173409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codes", force: :cascade do |t|
    t.string   "secret_code", null: false
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name",                        null: false
    t.string   "last_name",                         null: false
    t.integer  "grade_level",                       null: false
    t.string   "gender",                            null: false
    t.float    "gpa",                               null: false
    t.integer  "teacher_id"
    t.integer  "student_id",                        null: false
    t.boolean  "on_finalized_team", default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "hashed_password", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
