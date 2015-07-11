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

ActiveRecord::Schema.define(version: 20150711065957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: :cascade do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_public"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status"
    t.integer  "category_id"
  end

  add_index "events", ["category_id"], name: "index_events_on_category_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "with_whom"
    t.boolean  "AB_4"
    t.boolean  "AB_14"
    t.string   "pid"
    t.boolean  "A6_4"
    t.boolean  "arranged?"
    t.integer  "position"
  end

  create_table "shifts", force: :cascade do |t|
    t.integer  "A1"
    t.integer  "B1"
    t.integer  "A2"
    t.integer  "B2"
    t.integer  "A3"
    t.integer  "B3"
    t.integer  "A4"
    t.integer  "B4"
    t.integer  "A5"
    t.integer  "B5"
    t.integer  "A6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
  end

  add_index "shifts", ["person_id"], name: "index_shifts_on_person_id", using: :btree

end
