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

ActiveRecord::Schema.define(version: 20150816225142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "criterions", force: true do |t|
    t.integer  "rubric_id"
    t.integer  "rating"
    t.boolean  "enabled"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.integer  "video_id"
    t.integer  "teacher_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metafeedbacks", force: true do |t|
    t.boolean  "specific"
    t.boolean  "actionable"
    t.boolean  "kind"
    t.integer  "feedback_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rubrics", force: true do |t|
    t.integer  "video_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.string   "grade_level"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.integer  "teacher_id"
    t.string   "embedded_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "youtube_id"
  end

end
