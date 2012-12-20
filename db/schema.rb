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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121220182145) do

  create_table "conclusions", :force => true do |t|
    t.text     "observaciones"
    t.string   "rm"
    t.text     "sospecha"
    t.string   "correlacion"
    t.integer  "report_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "conclusions", ["report_id"], :name => "index_conclusions_on_report_id"

  create_table "displasia", :force => true do |t|
    t.string   "hiperintensidad"
    t.string   "diferencicacion_grisblanca"
    t.string   "engrosamiento"
    t.string   "transmato"
    t.string   "circunvoluciones"
    t.string   "reformateo"
    t.string   "discircunvolucion"
    t.string   "dislobulo"
    t.string   "dishemisferio"
    t.integer  "report_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "dislobulo2"
    t.string   "dislobulo3"
    t.string   "dislobulo4"
    t.string   "dishemisferio2"
  end

  add_index "displasia", ["report_id"], :name => "index_displasia_on_report_id"

  create_table "esclerosis", :force => true do |t|
    t.string   "atrofia_sunj"
    t.string   "hiperintensidad"
    t.string   "estructura_anormal"
    t.string   "esclerosis"
    t.text     "hallazgos_extra"
    t.integer  "report_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.float    "volumenhipoder"
    t.float    "volumenhipoiz"
  end

  add_index "esclerosis", ["report_id"], :name => "index_esclerosis_on_report_id"

  create_table "malformacions", :force => true do |t|
    t.string   "centro_hipert"
    t.string   "senal_peri"
    t.string   "anillo_hipo"
    t.string   "vaso"
    t.string   "hallazgo_mv"
    t.string   "circunvolucion"
    t.string   "lobulo"
    t.string   "hemisferio"
    t.integer  "report_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "lobulo2"
    t.string   "lobulo3"
    t.string   "lobulo4"
    t.string   "hemisferio2"
  end

  add_index "malformacions", ["report_id"], :name => "index_malformacions_on_report_id"

  create_table "patients", :force => true do |t|
    t.string   "patid"
    t.string   "name"
    t.string   "code"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "infoclinica15"
    t.text     "infoclinica3"
    t.text     "cod3t"
  end

  create_table "reports", :force => true do |t|
    t.string   "accession"
    t.string   "equipment"
    t.date     "date"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reports", ["patient_id"], :name => "index_reports_on_patient_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "tumors", :force => true do |t|
    t.string   "hiperintensidad"
    t.string   "lesion"
    t.string   "efecto_masa"
    t.string   "nodulo"
    t.string   "calsificaciones"
    t.text     "hallazgos"
    t.string   "circunvolucion"
    t.string   "lobulo"
    t.string   "hemisferio"
    t.integer  "report_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tumors", ["report_id"], :name => "index_tumors_on_report_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
