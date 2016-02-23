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

ActiveRecord::Schema.define(version: 20160223105142) do

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "beds", force: :cascade do |t|
    t.string   "type"
    t.integer  "property_id"
    t.boolean  "available"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "landlords", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "landlords", ["email"], name: "index_landlords_on_email", unique: true

  create_table "properties", force: :cascade do |t|
    t.string   "building"
    t.string   "street"
    t.string   "city"
    t.string   "county"
    t.integer  "rent"
    t.integer  "num_baths"
    t.boolean  "rent_allowance"
    t.boolean  "ptrb"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "properties_tenants", id: false, force: :cascade do |t|
    t.integer "tenant_id",   null: false
    t.integer "property_id", null: false
  end

  add_index "properties_tenants", ["property_id"], name: "index_properties_tenants_on_property_id"
  add_index "properties_tenants", ["tenant_id"], name: "index_properties_tenants_on_tenant_id"

  create_table "tenants", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "smoker"
    t.boolean  "pet_owner"
    t.boolean  "refs_avail"
    t.string   "occupation"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tenants", ["email"], name: "index_tenants_on_email", unique: true

end
