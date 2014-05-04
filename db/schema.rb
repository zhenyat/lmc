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

ActiveRecord::Schema.define(version: 20140427132117) do

  create_table "assessments", force: true do |t|
    t.integer  "user_id",     null: false
    t.integer  "behavior_id", null: false
    t.boolean  "user_tick",   null: false
    t.boolean  "master_tick", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assessments", ["behavior_id"], name: "assessments_behavior_id_fk", using: :btree
  add_index "assessments", ["user_id"], name: "assessments_user_id_fk", using: :btree

  create_table "behaviors", force: true do |t|
    t.integer  "competency_id", null: false
    t.integer  "level_id",      null: false
    t.string   "name",          null: false
    t.text     "description",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "behaviors", ["competency_id"], name: "behaviors_competency_id_fk", using: :btree
  add_index "behaviors", ["level_id"], name: "behaviors_level_id_fk", using: :btree

  create_table "clusters", force: true do |t|
    t.integer  "rank",        null: false
    t.string   "name",        null: false
    t.string   "title",       null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clusters", ["name"], name: "index_clusters_on_name", unique: true, using: :btree
  add_index "clusters", ["rank"], name: "index_clusters_on_rank", unique: true, using: :btree

  create_table "competencies", force: true do |t|
    t.integer  "position_id", null: false
    t.integer  "cluster_id",  null: false
    t.integer  "rank"
    t.string   "name",        null: false
    t.string   "title",       null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competencies", ["cluster_id"], name: "competencies_cluster_id_fk", using: :btree
  add_index "competencies", ["position_id"], name: "competencies_position_id_fk", using: :btree

  create_table "levels", force: true do |t|
    t.integer  "rank",       null: false
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "levels", ["name"], name: "index_levels_on_name", unique: true, using: :btree
  add_index "levels", ["rank"], name: "index_levels_on_rank", unique: true, using: :btree

  create_table "positions", force: true do |t|
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "position_id", null: false
    t.integer  "level_id",    null: false
    t.string   "first_name",  null: false
    t.string   "last_name",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["level_id"], name: "users_level_id_fk", using: :btree
  add_index "users", ["position_id"], name: "users_position_id_fk", using: :btree

  add_foreign_key "assessments", "behaviors", name: "assessments_behavior_id_fk"
  add_foreign_key "assessments", "users", name: "assessments_user_id_fk"

  add_foreign_key "behaviors", "competencies", name: "behaviors_competency_id_fk"
  add_foreign_key "behaviors", "levels", name: "behaviors_level_id_fk"

  add_foreign_key "competencies", "clusters", name: "competencies_cluster_id_fk"
  add_foreign_key "competencies", "positions", name: "competencies_position_id_fk"

  add_foreign_key "users", "levels", name: "users_level_id_fk"
  add_foreign_key "users", "positions", name: "users_position_id_fk"

end
