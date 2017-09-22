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

ActiveRecord::Schema.define(version: 20170919214034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "planner_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name", null: false
    t.string "variety", null: false
    t.float "planting_depth", null: false
    t.string "season", null: false
    t.integer "days_to_germination", null: false
    t.integer "soil_temp", null: false
    t.integer "days_to_maturity", null: false
    t.boolean "cold_resistant", null: false
    t.string "fertilization", null: false
    t.integer "watering_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plots", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "garden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contributor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waterings", force: :cascade do |t|
    t.string "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
