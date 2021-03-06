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

ActiveRecord::Schema.define(version: 20150112232813) do

  create_table "kaui_allowed_user_tenants", force: :cascade do |t|
    t.integer  "kaui_allowed_user_id", limit: 4
    t.integer  "kaui_tenant_id",       limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "kaui_allowed_user_tenants", ["kaui_allowed_user_id", "kaui_tenant_id"], name: "kaui_allowed_user_tenants_uniq", unique: true, using: :btree

  create_table "kaui_allowed_users", force: :cascade do |t|
    t.string   "kb_username", limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kaui_allowed_users", ["kb_username"], name: "index_kaui_allowed_users_on_kb_username", unique: true, using: :btree

  create_table "kaui_tenants", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "kb_tenant_id",         limit: 255
    t.string   "api_key",              limit: 255
    t.string   "encrypted_api_secret", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kaui_users", force: :cascade do |t|
    t.string   "kb_username",   limit: 255, null: false
    t.string   "kb_session_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kaui_users", ["kb_username"], name: "index_kaui_users_on_kb_username", unique: true, using: :btree

end
