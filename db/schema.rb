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

ActiveRecord::Schema.define(version: 2020_07_16_091831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "break_fasts", force: :cascade do |t|
    t.string "item"
    t.integer "cost"
    t.bigint "restora_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restora_id"], name: "index_break_fasts_on_restora_id"
  end

  create_table "disricts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.string "item"
    t.integer "cost"
    t.bigint "restora_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restora_id"], name: "index_lunches_on_restora_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "disricts"
    t.string "sectors"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restoras", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "image"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_restoras_on_user_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.bigint "disrict_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["disrict_id"], name: "index_sectors_on_disrict_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "break_fasts", "restoras"
  add_foreign_key "lunches", "restoras"
  add_foreign_key "restoras", "users"
  add_foreign_key "sectors", "disricts"
end
