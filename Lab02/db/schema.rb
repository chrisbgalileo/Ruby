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

ActiveRecord::Schema.define(version: 20140402184632) do

  create_table "groups", force: true do |t|
    t.string   "name_group"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["team1_id"], name: "index_groups_on_team1_id"
  add_index "groups", ["team2_id"], name: "index_groups_on_team2_id"

  create_table "matches", force: true do |t|
    t.date     "date_game"
    t.string   "phase"
    t.string   "status"
    t.integer  "local_team_id"
    t.integer  "visit_team_id"
    t.string   "score"
    t.integer  "winer_id"
    t.integer  "loser_id"
    t.boolean  "draw?"
    t.integer  "group_id"
    t.integer  "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["group_id"], name: "index_matches_on_group_id"
  add_index "matches", ["local_team_id"], name: "index_matches_on_local_team_id"
  add_index "matches", ["loser_id"], name: "index_matches_on_loser_id"
  add_index "matches", ["stadium_id"], name: "index_matches_on_stadium_id"
  add_index "matches", ["visit_team_id"], name: "index_matches_on_visit_team_id"
  add_index "matches", ["winer_id"], name: "index_matches_on_winer_id"

  create_table "stadia", force: true do |t|
    t.string   "name_stadium"
    t.string   "city"
    t.date     "date_build"
    t.integer  "max_capacity"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "flag"
    t.string   "uniform"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
