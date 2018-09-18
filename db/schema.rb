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

ActiveRecord::Schema.define(version: 2018_09_18_223318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estacions", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foto_reportes", force: :cascade do |t|
    t.bigint "fotos_id"
    t.bigint "reportes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fotos_id"], name: "index_foto_reportes_on_fotos_id"
    t.index ["reportes_id"], name: "index_foto_reportes_on_reportes_id"
  end

  create_table "fotos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "info_usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.string "correo"
    t.string "telefono"
    t.bigint "localidads_id"
    t.bigint "generos_id"
    t.bigint "usuarios_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generos_id"], name: "index_info_usuarios_on_generos_id"
    t.index ["localidads_id"], name: "index_info_usuarios_on_localidads_id"
    t.index ["usuarios_id"], name: "index_info_usuarios_on_usuarios_id"
  end

  create_table "localidads", force: :cascade do |t|
    t.string "nombre"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportes", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "fecha"
    t.string "ubicacion"
    t.bigint "usuarios_id"
    t.bigint "ruta_id"
    t.bigint "estacions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacions_id"], name: "index_reportes_on_estacions_id"
    t.index ["ruta_id"], name: "index_reportes_on_ruta_id"
    t.index ["usuarios_id"], name: "index_reportes_on_usuarios_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruta", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "userName"
    t.string "passwword"
    t.bigint "rols_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rols_id"], name: "index_usuarios_on_rols_id"
  end

  add_foreign_key "foto_reportes", "fotos", column: "fotos_id"
  add_foreign_key "foto_reportes", "reportes", column: "reportes_id"
  add_foreign_key "info_usuarios", "generos", column: "generos_id"
  add_foreign_key "info_usuarios", "localidads", column: "localidads_id"
  add_foreign_key "info_usuarios", "usuarios", column: "usuarios_id"
  add_foreign_key "reportes", "estacions", column: "estacions_id"
  add_foreign_key "reportes", "ruta", column: "ruta_id"
  add_foreign_key "reportes", "usuarios", column: "usuarios_id"
  add_foreign_key "usuarios", "rols", column: "rols_id"
end
