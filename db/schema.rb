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

ActiveRecord::Schema.define(:version => 20130106013418) do

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.string   "name"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "activity"
    t.string   "email"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kid_quotes", :force => true do |t|
    t.text     "quote"
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.string   "level"
    t.string   "day"
    t.string   "time"
    t.string   "teacher"
    t.string   "gender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "location"
    t.string   "class_type"
  end

  create_table "states", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "role",            :default => "author"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

end
