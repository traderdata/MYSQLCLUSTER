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

ActiveRecord::Schema.define(version: 20141027181239) do

  create_table "accounts", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "company"
    t.string   "name"
    t.string   "agreereceivenews"
    t.boolean  "terms_of_service"
    t.boolean  "active"
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true

  create_table "clusters", force: true do |t|
    t.string   "name"
    t.string   "datacenter"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "databases", force: true do |t|
    t.string   "name"
    t.string   "plan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
