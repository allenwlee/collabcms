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

ActiveRecord::Schema.define(version: 2018_09_16_120006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.integer "custom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "channel_id"
    t.string "yt_id"
    t.string "title"
    t.index ["channel_id"], name: "index_assets_on_channel_id"
  end

  create_table "channels", force: :cascade do |t|
    t.string "yt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cmses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "yt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "channel_id"
    t.bigint "cms_id"
    t.index ["cms_id"], name: "index_videos_on_cms_id"
  end

  create_table "views", force: :cascade do |t|
    t.string "yt_id"
    t.integer "quantity"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country_code"
  end

end
