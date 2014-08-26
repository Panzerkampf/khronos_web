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

ActiveRecord::Schema.define(version: 20140826005822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionario_turnos", force: true do |t|
    t.integer  "turno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "funcionario_id"
  end

  add_index "funcionario_turnos", ["funcionario_id"], name: "index_funcionario_turnos_on_funcionario_id", using: :btree
  add_index "funcionario_turnos", ["turno_id"], name: "index_funcionario_turnos_on_turno_id", using: :btree

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "data_nascimento"
    t.string   "identificacao"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["empresa_id"], name: "index_funcionarios_on_empresa_id", using: :btree

  create_table "funcionarios_turnos", force: true do |t|
    t.integer  "funcionario_id"
    t.integer  "turno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios_turnos", ["funcionario_id"], name: "index_funcionarios_turnos_on_funcionario_id", using: :btree
  add_index "funcionarios_turnos", ["turno_id"], name: "index_funcionarios_turnos_on_turno_id", using: :btree

  create_table "registros", force: true do |t|
    t.datetime "data_hora"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "funcionario_id"
  end

  add_index "registros", ["funcionario_id"], name: "index_registros_on_funcionario_id", using: :btree

  create_table "turnos", force: true do |t|
    t.time     "horario_entrada"
    t.time     "horario_saida"
    t.string   "periodo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
  end

  add_index "turnos", ["empresa_id"], name: "index_turnos_on_empresa_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "data_nascimento"
    t.string   "identificacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
  end

  add_index "usuarios", ["empresa_id"], name: "index_usuarios_on_empresa_id", using: :btree

end
