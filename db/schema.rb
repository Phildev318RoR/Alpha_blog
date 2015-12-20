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

ActiveRecord::Schema.define(version: 20151219235940) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_emails", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_rule_details", force: :cascade do |t|
    t.integer  "comms_rules_id"
    t.integer  "comms_types_id"
    t.integer  "comms_id"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_rules", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "site_id"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_sms", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comms_web_services", force: :cascade do |t|
    t.string   "name"
    t.string   "service"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_rule_details", force: :cascade do |t|
    t.integer  "group_rule_id"
    t.integer  "rule_id"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_rules", force: :cascade do |t|
    t.integer  "site_id"
    t.string   "name"
    t.string   "description"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_message_parrameters", force: :cascade do |t|
    t.integer  "node_messages_id"
    t.integer  "value_type"
    t.string   "value_length"
    t.integer  "value_index"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_message_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_messages", force: :cascade do |t|
    t.integer  "node_id"
    t.integer  "message_type_id"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: :cascade do |t|
    t.integer  "node_type"
    t.string   "node_name"
    t.integer  "site_id"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: :cascade do |t|
    t.string   "name"
    t.string   "decription"
    t.integer  "node_message_parrameter_id"
    t.integer  "rule_type_id"
    t.string   "rule_value"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "contact_person"
    t.string   "contact_phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.boolean  "downloaded"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "value_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflows", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "group_rule_id"
    t.integer  "valid_comms_id"
    t.string   "valid_comms_message"
    t.integer  "invalid_comms_id"
    t.string   "invalid_comms_message"
    t.boolean  "downloaded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
