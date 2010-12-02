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

ActiveRecord::Schema.define(:version => 20101130093748) do

  create_table "business_values", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_values", ["value"], :name => "index_business_values_on_value", :unique => true

  create_table "components", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "how_to_demo"
    t.integer  "storypoint_value_id"
    t.integer  "business_value_id"
    t.integer  "priority"
    t.integer  "story_status_id"
    t.integer  "story_type_id"
    t.integer  "component_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["component_id"], :name => "index_stories_on_component_id"
  add_index "stories", ["story_status_id"], :name => "index_stories_on_story_status_id"
  add_index "stories", ["story_type_id"], :name => "index_stories_on_story_type_id"

  create_table "story_statuses", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "story_types", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storypoint_values", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storypoint_values", ["value"], :name => "index_storypoint_values_on_value", :unique => true

end
