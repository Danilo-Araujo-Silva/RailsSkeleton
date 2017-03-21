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

ActiveRecord::Schema.define(version: 20170320202605) do

  create_table "permissions", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "breadcrumb",  null: false
    t.string   "name",        null: false
    t.string   "description", null: false
    t.integer  "created_by",  null: false
    t.integer  "updated_by",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["breadcrumb"], name: "index_permissions_on_breadcrumb"
    t.index ["name"], name: "index_permissions_on_name"
    t.index ["parent_id"], name: "index_permissions_on_parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   null: false
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["name"], name: "index_users_on_name"
    t.index ["username"], name: "index_users_on_username"
  end

  create_table "users_permissions", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "permission_id", null: false
    t.string   "grant",         null: false
    t.integer  "created_by",    null: false
    t.integer  "updated_by",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["grant"], name: "index_users_permissions_on_grant"
    t.index ["permission_id"], name: "index_users_permissions_on_permission_id"
    t.index ["user_id"], name: "index_users_permissions_on_user_id"
  end

end
