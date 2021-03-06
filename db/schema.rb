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

ActiveRecord::Schema.define(version: 20160309014654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "highscores", force: :cascade do |t|
    t.string   "name"
    t.integer  "time"
    t.integer  "world_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "highscores", ["world_id", "created_at"], name: "index_highscores_on_world_id_and_created_at", using: :btree
  add_index "highscores", ["world_id"], name: "index_highscores_on_world_id", using: :btree

  create_table "hitboxes", force: :cascade do |t|
    t.integer  "world_id"
    t.string   "character"
    t.decimal  "x_left"
    t.decimal  "x_right"
    t.decimal  "y_bottom"
    t.decimal  "y_top"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hitboxes", ["world_id", "character"], name: "index_hitboxes_on_world_id_and_character", using: :btree
  add_index "hitboxes", ["world_id"], name: "index_hitboxes_on_world_id", using: :btree

  create_table "worlds", force: :cascade do |t|
    t.string   "title"
    t.string   "difficulty"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_foreign_key "highscores", "worlds"
  add_foreign_key "hitboxes", "worlds"
end
