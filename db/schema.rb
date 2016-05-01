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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160501111531) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "subject_id"
  end

  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id"

  create_table "enrollments", force: :cascade do |t|
    t.string   "user_email"
    t.string   "subject"
    t.string   "course_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "id_num"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "term"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "subject_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
