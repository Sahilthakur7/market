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

ActiveRecord::Schema.define(version: 20170518155906) do

  create_table "agents", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "agents", ["email"], name: "index_agents_on_email", unique: true
  add_index "agents", ["reset_password_token"], name: "index_agents_on_reset_password_token", unique: true

  create_table "clubreps", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.string   "name"
  end

  add_index "clubreps", ["club_id"], name: "index_clubreps_on_club_id"
  add_index "clubreps", ["email"], name: "index_clubreps_on_email", unique: true
  add_index "clubreps", ["reset_password_token"], name: "index_clubreps_on_reset_password_token", unique: true

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.integer  "stars"
    t.string   "wealth"
    t.string   "country"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "enquiries", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "response"
    t.boolean  "responded"
    t.boolean  "seen"
  end

  add_index "enquiries", ["club_id"], name: "index_enquiries_on_club_id"
  add_index "enquiries", ["player_id", "club_id"], name: "index_enquiries_on_player_id_and_club_id", unique: true
  add_index "enquiries", ["player_id"], name: "index_enquiries_on_player_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "position"
    t.integer  "value"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "club_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "agent_id"
    t.string   "status"
  end

  add_index "players", ["agent_id"], name: "index_players_on_agent_id"
  add_index "players", ["club_id"], name: "index_players_on_club_id"

  create_table "transfers", force: :cascade do |t|
    t.integer  "bid"
    t.integer  "player_id"
    t.integer  "club_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "responded"
    t.boolean  "seen"
    t.string   "status"
    t.integer  "salary"
    t.integer  "signon"
    t.string   "personalresponse"
  end

  add_index "transfers", ["club_id"], name: "index_transfers_on_club_id"
  add_index "transfers", ["player_id"], name: "index_transfers_on_player_id"

end
