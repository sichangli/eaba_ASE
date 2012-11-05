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

ActiveRecord::Schema.define(:version => 20121105213920) do

  create_table "administrators", :force => true do |t|
    t.string   "account_name"
    t.string   "name"
    t.string   "password"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "client_to_restaurant_reviews", :force => true do |t|
    t.integer  "client_id"
    t.integer  "restaurant_id"
    t.text     "review"
    t.integer  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "client_users", :force => true do |t|
    t.string   "account_name"
    t.string   "name"
    t.string   "password"
    t.string   "gender"
    t.string   "birthday"
    t.string   "zipcode"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "client_id"
    t.integer  "restaurant_id"
    t.text     "content"
    t.string   "zipcode"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurant_to_client_reviews", :force => true do |t|
    t.integer  "client_id"
    t.integer  "restaurant_id"
    t.text     "review"
    t.integer  "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurant_users", :force => true do |t|
    t.string   "account_name"
    t.string   "name"
    t.string   "password"
    t.string   "license"
    t.string   "phone"
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.integer  "camis"
    t.string   "dba"
    t.integer  "boro"
    t.integer  "building"
    t.string   "street"
    t.string   "zipcode"
    t.string   "phone"
    t.integer  "cuisinecode"
    t.string   "inspdate"
    t.string   "action"
    t.integer  "violcode"
    t.integer  "score"
    t.string   "currentgrade"
    t.string   "gradedate"
    t.string   "recorddate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
