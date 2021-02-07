# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_05_171241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "price", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "trinkets", force: :cascade do |t|
    t.string "name"
    t.integer "price", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "userregions", force: :cascade do |t|
    t.boolean "is_bought", default: false
    t.bigint "user_id", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_userregions_on_region_id"
    t.index ["user_id"], name: "index_userregions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "tokens", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usertrinkets", force: :cascade do |t|
    t.boolean "is_bought", default: false
    t.bigint "user_id", null: false
    t.bigint "trinket_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trinket_id"], name: "index_usertrinkets_on_trinket_id"
    t.index ["user_id"], name: "index_usertrinkets_on_user_id"
  end

  create_table "zones", force: :cascade do |t|
    t.boolean "is_active", default: false
    t.boolean "is_complete", default: false
    t.text "objective"
    t.datetime "zone_start"
    t.datetime "zone_end"
    t.datetime "premature_end"
    t.integer "total_objective_time", default: 0
    t.bigint "user_id", null: false
    t.bigint "tag_id", null: false
    t.bigint "trinket_id", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_zones_on_region_id"
    t.index ["tag_id"], name: "index_zones_on_tag_id"
    t.index ["trinket_id"], name: "index_zones_on_trinket_id"
    t.index ["user_id"], name: "index_zones_on_user_id"
  end

  add_foreign_key "tags", "users"
  add_foreign_key "userregions", "regions"
  add_foreign_key "userregions", "users"
  add_foreign_key "usertrinkets", "trinkets"
  add_foreign_key "usertrinkets", "users"
  add_foreign_key "zones", "regions"
  add_foreign_key "zones", "tags"
  add_foreign_key "zones", "trinkets"
  add_foreign_key "zones", "users"
end
