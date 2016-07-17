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

ActiveRecord::Schema.define(version: 20160717004027) do

  create_table "book_entries", force: :cascade do |t|
    t.string   "bookentry_tipo_documento",   limit: 255
    t.string   "bookentry_numero_documento", limit: 255
    t.string   "string",                     limit: 255
    t.datetime "bookentry_fecha_ingreso"
    t.string   "editorial_nombre",           limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "book_entry_details", force: :cascade do |t|
    t.string   "bookentrydetail_titulo",              limit: 255
    t.integer  "bookentrydetail_cantidad_ejemplares", limit: 4
    t.integer  "bookentry_id",                        limit: 4
    t.integer  "book_id",                             limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "book_isbn",                limit: 255
    t.string   "book_titulo",              limit: 255
    t.integer  "book_cantidad_ejemplares", limit: 4
    t.string   "book_autor",               limit: 255
    t.string   "book_serie",               limit: 255
    t.string   "book_coleccion",           limit: 255
    t.integer  "book_paginas",             limit: 4
    t.integer  "book_ano",                 limit: 4
    t.string   "book_encuadernacion",      limit: 255
    t.integer  "editorial_id",             limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "editorials", force: :cascade do |t|
    t.string   "editorial_rut",             limit: 255
    t.string   "editorial_razon_social",    limit: 255
    t.string   "editorial_direccion",       limit: 255
    t.string   "editorial_email_contacto",  limit: 255
    t.string   "editorial_nombre_contacto", limit: 255
    t.text     "editorial_descripcion",     limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
