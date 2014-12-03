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

ActiveRecord::Schema.define(version: 20141203012113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string   "name",          default: "", null: false
    t.string   "gender",        default: "", null: false
    t.string   "age",           default: "", null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image",         default: "", null: false
    t.integer  "race_id",       default: 0,  null: false
    t.integer  "ethercraft_id", default: 0,  null: false
    t.integer  "birthplace_id", default: 0,  null: false
  end

  add_index "characters", ["birthplace_id"], name: "index_characters_on_birthplace_id", using: :btree
  add_index "characters", ["ethercraft_id"], name: "index_characters_on_ethercraft_id", using: :btree
  add_index "characters", ["race_id"], name: "index_characters_on_race_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name",             default: "", null: false
    t.integer  "age",              default: 0,  null: false
    t.integer  "year_established", default: 0,  null: false
    t.string   "demonym",          default: "", null: false
    t.string   "language",         default: "", null: false
    t.string   "flag",             default: "", null: false
    t.text     "history",          default: "", null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "ethercrafts", force: true do |t|
    t.string   "name",        default: "", null: false
    t.text     "description", default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "races", force: true do |t|
    t.string   "name",        default: "", null: false
    t.text     "description", default: "", null: false
    t.string   "evolution",   default: "", null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "regions", force: true do |t|
    t.string   "name",       default: "", null: false
    t.text     "history",    default: "", null: false
    t.integer  "country_id", default: 0,  null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
