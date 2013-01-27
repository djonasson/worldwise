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

ActiveRecord::Schema.define(:version => 20130127134458) do

  create_table "continent_model_translations", :force => true do |t|
    t.integer  "continent_model_id"
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "continent_model_translations", ["continent_model_id"], :name => "index_continent_model_translations_on_continent_model_id"
  add_index "continent_model_translations", ["locale"], :name => "index_continent_model_translations_on_locale"

  create_table "continent_models", :force => true do |t|
    t.string "code"
  end

  create_table "continent_models_continents", :force => true do |t|
    t.integer "continent_model_id"
    t.integer "continent_id"
  end

  create_table "continent_translations", :force => true do |t|
    t.integer  "continent_id"
    t.string   "locale"
    t.string   "name"
    t.string   "alternative_names"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "continent_translations", ["continent_id"], :name => "index_continent_translations_on_continent_id"
  add_index "continent_translations", ["locale"], :name => "index_continent_translations_on_locale"

  create_table "continents", :force => true do |t|
    t.string  "code"
    t.decimal "land_mass_percentage", :precision => 4, :scale => 2
  end

end
