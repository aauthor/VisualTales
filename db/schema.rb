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

ActiveRecord::Schema.define(version: 20160220105121) do

  create_table "characters", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "portrait",    limit: 255
    t.integer  "story_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "characters", ["story_id"], name: "index_characters_on_story_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.integer  "pose_id",    limit: 4
    t.integer  "position_x", limit: 4
    t.integer  "position_y", limit: 4
    t.text     "script",     limit: 65535
    t.integer  "scene_id",   limit: 4
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "events", ["pose_id"], name: "index_events_on_pose_id", using: :btree
  add_index "events", ["scene_id"], name: "index_events_on_scene_id", using: :btree

  create_table "poses", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "image",        limit: 255
    t.integer  "character_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "poses", ["character_id"], name: "index_poses_on_character_id", using: :btree

  create_table "scenes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "background",  limit: 255
    t.integer  "story_id",    limit: 4
    t.integer  "order",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "scenes", ["story_id"], name: "index_scenes_on_story_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "author",      limit: 255
    t.string   "email",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "story_tags", force: :cascade do |t|
    t.integer  "story_id",   limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "story_tags", ["story_id"], name: "index_story_tags_on_story_id", using: :btree
  add_index "story_tags", ["tag_id"], name: "index_story_tags_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
