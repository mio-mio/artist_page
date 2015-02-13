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

ActiveRecord::Schema.define(version: 20150212091436) do

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.string   "title"
    t.text     "official_title"
    t.string   "offical_url"
    t.string   "img_url"
    t.string   "sponser"
    t.string   "sponser_url"
    t.string   "broadcasting_station"
    t.string   "broadcasting_period"
    t.string   "youtube_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "music"
    t.string   "music_url"
    t.string   "lyrics"
    t.string   "singer"
    t.string   "illustration"
    t.string   "pv_director"
    t.string   "youtube_id"
    t.string   "itunes_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
