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

ActiveRecord::Schema.define(version: 20170608074539) do

  create_table "group_users", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "group_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_users", ["group_id"], name: "index_group_users_on_group_id", using: :btree
  add_index "group_users", ["user_id"], name: "index_group_users_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mamas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "adress1",    limit: 255
    t.string   "adress2",    limit: 255
    t.integer  "age",        limit: 4
    t.integer  "numchild",   limit: 4
    t.integer  "work",       limit: 4
    t.integer  "private",    limit: 4
    t.integer  "frequency",  limit: 4
    t.integer  "ivent",      limit: 4
    t.integer  "nickname",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment",    limit: 65535
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id",   limit: 4
    t.text     "message",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "receiver_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "nickname",               limit: 255
    t.string   "adress1",                limit: 255
    t.string   "adress2",                limit: 255
    t.integer  "age",                    limit: 4
    t.integer  "numchild",               limit: 4
    t.string   "work",                   limit: 255
    t.string   "private",                limit: 255
    t.text     "frequency",              limit: 65535
    t.string   "ivent",                  limit: 255
    t.string   "lastname",               limit: 255
    t.text     "comment",                limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
end
