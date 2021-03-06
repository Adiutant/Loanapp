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

ActiveRecord::Schema.define(version: 2018_08_09_112213) do

  create_table "loans", force: :cascade do |t|
    t.float "sum"
    t.string "term"
    t.float "interest"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "creditor"
    t.string "punishment"
    t.string "giver"
    t.string "begining"
    t.string "email"
    t.boolean "notice"
    t.string "BirthODG"
    t.string "BirthODC"
    t.string "RegistredAtG"
    t.string "RegistredAtC"
    t.string "SerialG"
    t.string "SerialC"
    t.string "PassTakenG"
    t.string "PassTakenC"
    t.string "PassTakenTimeG"
    t.string "PassTakenTimeC"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
