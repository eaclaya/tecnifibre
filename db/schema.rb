# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_01_003931) do
  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "ads", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "description"
    t.string "ad_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "player_one_id"
    t.integer "player_two_id"
    t.integer "player_one_game_score"
    t.integer "player_two_game_score"
    t.integer "player_one_set_score"
    t.integer "player_two_set_score"
    t.integer "player_one_match_score"
    t.integer "player_two_match_score"
    t.string "player_one_name"
    t.string "player_two_name"
    t.integer "sets"
    t.integer "games"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "tour_id"
    t.index ["player_one_id"], name: "index_matches_on_player_one_id"
    t.index ["player_two_id"], name: "index_matches_on_player_two_id"
    t.index ["tour_id"], name: "index_matches_on_tour_id"
  end

  create_table "participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ranking"
    t.integer "points"
    t.bigint "player_id"
    t.bigint "tour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_participants_on_player_id"
    t.index ["tour_id"], name: "index_participants_on_tour_id"
  end

  create_table "players", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "ranking"
    t.integer "age"
    t.integer "points"
    t.integer "tours_count"
    t.integer "weight"
    t.integer "height"
    t.string "nacionality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "matches", "tours"
  add_foreign_key "participants", "players"
  add_foreign_key "participants", "tours"
end
