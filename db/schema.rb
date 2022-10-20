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

ActiveRecord::Schema[7.0].define(version: 2022_10_20_073235) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_promos", force: :cascade do |t|
    t.string "sku_free", default: [], array: true
    t.bigint "promotion_id", null: false
    t.float "min_value"
    t.integer "min_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "index_item_promos_on_promotion_id"
  end

  create_table "price_promos", force: :cascade do |t|
    t.float "percent_discount"
    t.bigint "promotion_id", null: false
    t.float "min_value"
    t.integer "min_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promotion_id"], name: "index_price_promos_on_promotion_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "promo_type"
    t.string "description"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_promotions_on_product_id"
  end

  add_foreign_key "item_promos", "promotions"
  add_foreign_key "price_promos", "promotions"
  add_foreign_key "promotions", "products"
end