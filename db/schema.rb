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

ActiveRecord::Schema.define(:version => 20130825161909) do

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "categorizations", :force => true do |t|
    t.integer "tweet_id"
    t.integer "category_id"
  end

  add_index "categorizations", ["category_id"], :name => "index_categorizations_on_category_id"
  add_index "categorizations", ["tweet_id"], :name => "index_categorizations_on_tweet_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "tweet_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tweets", :force => true do |t|
    t.string   "status"
    t.integer  "zombie_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "location",      :limit => 30
    t.boolean  "show_location",               :default => false
  end

end
