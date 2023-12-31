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

ActiveRecord::Schema[7.1].define(version: 2023_12_08_033405) do
  create_table "homies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "homie_id"
  end

  create_table "quote_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "homie_id"
    t.integer "quote_type_id"
    t.integer "insanity"
    t.boolean "star"
    t.index ["homie_id"], name: "index_quotes_on_homie_id"
    t.index ["quote_type_id"], name: "index_quotes_on_quote_type_id"
  end

  add_foreign_key "quotes", "homies"
  add_foreign_key "quotes", "quote_types"
end
