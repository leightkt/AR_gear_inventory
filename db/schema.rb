# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_04_170242) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
  end

  create_table "gearactivities", force: :cascade do |t|
    t.integer "gear_id"
    t.integer "activity_id"
    t.integer "gear_quantity_needed"
    t.index ["activity_id"], name: "index_gearactivities_on_activity_id"
    t.index ["gear_id"], name: "index_gearactivities_on_gear_id"
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.integer "quantity_owned"
    t.boolean "essential"
  end

  add_foreign_key "gearactivities", "activities"
  add_foreign_key "gearactivities", "gears"
end
