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

ActiveRecord::Schema.define(version: 20181119153728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "pool_id"
    t.string "date"
    t.string "player1"
    t.string "player2"
    t.string "player3"
    t.string "player4"
    t.string "player5"
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
    t.string "team2"
    t.string "team3"
    t.string "team4"
    t.string "team5"
    t.integer "spread1"
    t.integer "spread2"
    t.integer "spread3"
    t.integer "spread4"
    t.integer "spread5"
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
    t.string "start_date"
    t.string "end_date"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "sport"
    t.string "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pools", force: :cascade do |t|
    t.string "pool_name"
    t.string "commish_id"
    t.string "sport"
    t.string "date"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secrets", force: :cascade do |t|
    t.string "user_id"
    t.string "kind"
    t.string "pass"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selections", force: :cascade do |t|
    t.string "date"
    t.string "user_id"
    t.string "group_id"
    t.string "pool_id"
    t.string "selection"
    t.string "result", default: "none"
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

  create_table "tickets", force: :cascade do |t|
    t.string "date"
    t.string "player_id"
    t.string "name"
    t.string "sport"
    t.string "started", default: "f"
    t.string "score"
    t.string "updated", default: "f"
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
    t.string "username"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
