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

ActiveRecord::Schema.define(version: 20180630070201) do

  create_table "administrators", force: :cascade do |t|
    t.string "ketua1"
    t.string "fotoketua1"
    t.string "ketua2"
    t.string "fotoketua2"
    t.string "bendahara1"
    t.string "fotobendahara1"
    t.string "bendahara2"
    t.string "fotobendahara2"
    t.string "pembina"
    t.string "fotopembina"
    t.string "penasihat1"
    t.string "fotopenasihat1"
    t.string "penasihat2"
    t.string "fotopenasihat2"
    t.string "penasihat3"
    t.string "fotopenasihat3"
    t.text "text_pengantar"
    t.string "humas1"
    t.string "fotohumas1"
    t.string "humas2"
    t.string "fotohumas2"
    t.string "umum1"
    t.string "fotoumum1"
    t.string "umum2"
    t.string "fotoumum2"
    t.string "pk1"
    t.string "fotopk1"
    t.string "pk2"
    t.string "fotopk2"
    t.string "pk3"
    t.string "fotopk3"
    t.string "pk41"
    t.string "fotopk41"
    t.string "pk42"
    t.string "fotopk42"
    t.string "pk51"
    t.string "fotopk51"
    t.string "pk52"
    t.string "fotopk52"
    t.string "pk6"
    t.string "fotopk6"
    t.string "pk7"
    t.string "fotopk7"
    t.string "pk81"
    t.string "fotopk81"
    t.string "pk82"
    t.string "fotopk82"
  end

  create_table "alumnus", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kelas1"
    t.string "kelas2"
    t.string "kelas3"
    t.string "email"
    t.string "nohp"
    t.string "alamat_rumah"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "narasi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "dilaksanakan"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "alumnu_id"
    t.integer "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "chance"
    t.string "active"
  end

end
