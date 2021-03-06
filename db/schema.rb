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

ActiveRecord::Schema.define(version: 20161103112806) do

  create_table "donation_lists", force: :cascade do |t|
    t.string   "title",                      limit: 255
    t.datetime "year"
    t.string   "dl_attachment_file_name",    limit: 255
    t.string   "dl_attachment_content_type", limit: 255
    t.integer  "dl_attachment_file_size",    limit: 4
    t.datetime "dl_attachment_updated_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "donations", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "amount",          limit: 4
    t.integer  "donate_way",      limit: 4
    t.datetime "donate_date"
    t.string   "receipt_title",   limit: 255
    t.string   "receipt_address", limit: 255
    t.string   "phone",           limit: 255
    t.string   "email",           limit: 255
    t.string   "order_num",       limit: 255
    t.boolean  "donate",                        default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "project_id",      limit: 4
    t.text     "description",     limit: 65535
  end

  create_table "downloads", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "file_at_file_name",    limit: 255
    t.string   "file_at_content_type", limit: 255
    t.integer  "file_at_file_size",    limit: 4
    t.datetime "file_at_updated_at"
    t.string   "title_en",             limit: 255
  end

  create_table "links", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "web_addr",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name_en",    limit: 255
  end

  create_table "logs", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "project_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "story_id",           limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "year"
    t.string   "name",                                limit: 255
    t.integer  "kind",                                limit: 4
    t.integer  "budget",                              limit: 4
    t.integer  "income",                              limit: 4
    t.integer  "exp_personnel",                       limit: 4
    t.integer  "exp_business",                        limit: 4
    t.integer  "exp_mix",                             limit: 4
    t.integer  "exp_other",                           limit: 4
    t.text     "exe_desc",                            limit: 65535
    t.text     "description",                         limit: 65535
    t.string   "abbreviation",                        limit: 255
    t.datetime "donate_begin_at"
    t.datetime "donate_end_at"
    t.datetime "account_begin"
    t.datetime "account_end"
    t.string   "account",                             limit: 255
    t.string   "password",                            limit: 255
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "pj_attachment_file_name",             limit: 255
    t.string   "pj_attachment_content_type",          limit: 255
    t.integer  "pj_attachment_file_size",             limit: 4
    t.datetime "pj_attachment_updated_at"
    t.string   "pj_cover_file_name",                  limit: 255
    t.string   "pj_cover_content_type",               limit: 255
    t.integer  "pj_cover_file_size",                  limit: 4
    t.datetime "pj_cover_updated_at"
    t.integer  "balance",                             limit: 4
    t.string   "pj_exp_attachment_file_name",         limit: 255
    t.string   "pj_exp_attachment_content_type",      limit: 255
    t.integer  "pj_exp_attachment_file_size",         limit: 4
    t.datetime "pj_exp_attachment_updated_at"
    t.string   "holder",                              limit: 255
    t.string   "phone",                               limit: 255
    t.string   "email",                               limit: 255
    t.string   "pj_donation_attachment_file_name",    limit: 255
    t.string   "pj_donation_attachment_content_type", limit: 255
    t.integer  "pj_donation_attachment_file_size",    limit: 4
    t.datetime "pj_donation_attachment_updated_at"
    t.boolean  "visible",                                           default: false
    t.integer  "last_year_exp",                       limit: 4
    t.integer  "last_year_balance",                   limit: 4
  end

  create_table "sign_reports", force: :cascade do |t|
    t.string   "title",                      limit: 255
    t.datetime "year"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "sr_attachment_file_name",    limit: 255
    t.string   "sr_attachment_content_type", limit: 255
    t.integer  "sr_attachment_file_size",    limit: 4
    t.datetime "sr_attachment_updated_at"
  end

  create_table "special_projects", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "title_enlarge", limit: 255
    t.string   "link",          limit: 255
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer  "project_id",         limit: 4
    t.string   "title",              limit: 255
    t.datetime "stageDate"
    t.text     "description",        limit: 65535
    t.string   "video_url",          limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "stories", force: :cascade do |t|
    t.text     "description",    limit: 65535
    t.string   "topic",          limit: 255
    t.string   "video_url",      limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "news_date"
    t.string   "topic_en",       limit: 255
    t.string   "description_en", limit: 255
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
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "role",                   limit: 4,   default: 0
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
