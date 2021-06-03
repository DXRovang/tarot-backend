# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_03_203104) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cardType"
    t.text "summary"
    t.string "image"
    t.text "meaning_up"
    t.text "meaning_rev"
    t.text "desc"
  end

  create_table "draws", force: :cascade do |t|
    t.string "layout"
    t.text "reading"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "card"
  end

  create_table "interpretations", force: :cascade do |t|
    t.text "body"
    t.integer "draw_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["draw_id"], name: "index_interpretations_on_draw_id"
  end

  add_foreign_key "interpretations", "draws"
end
