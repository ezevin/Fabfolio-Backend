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

ActiveRecord::Schema.define(version: 2020_01_31_165700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventories", force: :cascade do |t|
    t.integer "project_id"
    t.integer "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.integer "project_id"
    t.integer "supply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "project_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.date "start_date", default: -> { "CURRENT_TIMESTAMP" }
    t.date "due_date", default: -> { "CURRENT_TIMESTAMP" }
    t.float "budget"
    t.boolean "finished", default: false
    t.text "details"
    t.string "finished_image", default: "https://images-na.ssl-images-amazon.com/images/I/51UW1849rJL._SX466_.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer "user_id"
    t.string "label"
    t.float "price", default: 0.0
    t.text "description"
    t.string "image_url", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
    t.string "place_purchased"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "project_id"
    t.string "item"
    t.boolean "complete", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "process_pic", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
  end

  create_table "tools", force: :cascade do |t|
    t.integer "user_id"
    t.string "label"
    t.string "category"
    t.float "price"
    t.text "description"
    t.string "image_url"
    t.string "place_purchased"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
