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

ActiveRecord::Schema.define(version: 20170418031057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gr_crds", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "g_nam1"
    t.string   "g_name2"
    t.integer  "g_idnum"
    t.json     "g_photo"
    t.string   "g_title"
    t.string   "g_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_gr_crds_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_gr_crds_on_reset_password_token", unique: true, using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "surname"
    t.date     "dob"
    t.json     "photo"
    t.boolean  "gender"
    t.string   "address1"
    t.string   "address2"
    t.integer  "post_code"
    t.string   "state"
    t.string   "country"
    t.integer  "vaccinator_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["vaccinator_id"], name: "index_patients_on_vaccinator_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "vacc_type"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "batch_number"
    t.integer  "vaccinator_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["vaccinator_id"], name: "index_projects_on_vaccinator_id", using: :btree
  end

  create_table "vaccinators", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "vac_name1"
    t.string   "vac_name2"
    t.integer  "vac_idnum"
    t.json     "vac_photo"
    t.string   "vac_title"
    t.string   "vendor_name"
    t.string   "vac_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_vaccinators_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_vaccinators_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "patients", "vaccinators"
  add_foreign_key "projects", "vaccinators"
end
