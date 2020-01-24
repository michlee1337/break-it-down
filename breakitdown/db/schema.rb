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

ActiveRecord::Schema.define(version: 2020_01_24_163726) do

  create_table "blocks", force: :cascade do |t|
    t.string "title"
    t.string "desctiption"
    t.integer "mastery"
    t.integer "chunk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chunk_id"], name: "index_blocks_on_chunk_id"
  end

  create_table "chunks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "guide_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_chunks_on_guide_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
