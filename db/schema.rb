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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110529100203) do

  create_table "answers", :force => true do |t|
    t.integer  "right"
    t.text     "content"
    t.integer  "question_id"
    t.integer  "col"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configthemerelations", :force => true do |t|
    t.integer  "tconfiguration_id"
    t.integer  "theme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configuration_types", :force => true do |t|
    t.string   "Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "pict"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qtypes", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.text     "content"
    t.integer  "answcount"
    t.integer  "qtype_id"
    t.integer  "theme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serlevels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sertypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spheres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tconfigurations", :force => true do |t|
    t.string   "Name"
    t.integer  "qT1Count"
    t.integer  "qT2Count"
    t.integer  "qT3Count"
    t.integer  "qT4Count"
    t.integer  "qT5Count"
    t.integer  "degree3"
    t.integer  "degree4"
    t.integer  "degree5"
    t.time     "TestTime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "configuration_type_id"
  end

  create_table "test_configs", :force => true do |t|
    t.string   "Name"
    t.datetime "TestTime"
    t.integer  "confType"
    t.integer  "qType1Count"
    t.integer  "qType2Count"
    t.integer  "qType3Count"
    t.integer  "qType4Count"
    t.integer  "qType5Count"
    t.integer  "degree3"
    t.integer  "degree4"
    t.integer  "degree5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", :force => true do |t|
    t.integer  "testsession_id"
    t.integer  "question_id"
    t.string   "useransw"
    t.string   "answorder"
    t.integer  "ok"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testsessions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "tconfiguration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "completed"
    t.integer  "mark"
    t.float    "percent"
  end

  create_table "themes", :force => true do |t|
    t.string   "title"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "roles",                                    :default => "--- []"
    t.string   "F"
    t.string   "I"
    t.string   "O"
    t.boolean  "Sex"
    t.date     "Birth"
    t.string   "workplace"
    t.string   "proff"
    t.integer  "sertype_id"
    t.integer  "sphere_id"
    t.integer  "education_id"
    t.integer  "serlevel_id"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
