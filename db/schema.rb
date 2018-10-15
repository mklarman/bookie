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

ActiveRecord::Schema.define(version: 20181008134737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "stakes"
    t.string "bet_types"
    t.string "wager_limit"
    t.string "sports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_clients", force: :cascade do |t|
    t.string "league_id"
    t.string "user_id"
    t.string "league_name"
    t.string "stakes"
    t.string "bet_types"
    t.string "wager_limit"
    t.string "sports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_wagers", force: :cascade do |t|
    t.string "user_id"
    t.string "league_id"
    t.string "league_client_id"
    t.string "wager_type"
    t.integer "amount"
    t.string "team1"
    t.string "team2", default: "team2"
    t.string "team3", default: "team3"
    t.string "team4", default: "team4"
    t.string "team5", default: "team5"
    t.integer "spread1"
    t.integer "spread2", default: 0
    t.integer "spread3", default: 0
    t.integer "spread4", default: 0
    t.integer "spread5", default: 0
    t.string "date", default: "00-00-00"
    t.integer "net_result", default: 0
    t.string "outcome", default: "none"
    t.boolean "graded", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.integer "clients"
    t.string "end_date"
    t.string "status"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "date"
    t.string "name"
    t.string "sport"
    t.string "spread"
    t.string "opp"
    t.string "total"
    t.string "start_time"
    t.string "home_line"
    t.string "opp_line"
    t.string "over_line"
    t.string "under_line"
    t.string "score", default: "0"
    t.string "opp_score", default: "0"
    t.string "total_points", default: "0"
    t.string "spread_result", default: "0"
    t.string "total_result", default: "0"
    t.boolean "money_line", default: false
    t.string "updated", default: "f"
    t.string "display", default: "off"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "sports_book_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wagers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "client_id"
    t.string "wager_type"
    t.integer "amount"
    t.string "team1"
    t.string "team2", default: "team2"
    t.string "team3", default: "team3"
    t.string "team4", default: "team4"
    t.string "team5", default: "team5"
    t.integer "spread1"
    t.integer "spread2", default: 0
    t.integer "spread3", default: 0
    t.integer "spread4", default: 0
    t.integer "spread5", default: 0
    t.string "date", default: "00-00-00"
    t.integer "net_result", default: 0
    t.string "outcome", default: "none"
    t.boolean "graded", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
