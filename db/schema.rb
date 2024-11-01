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

ActiveRecord::Schema[7.2].define(version: 2024_11_01_185034) do
  create_table "clientes", force: :cascade do |t|
    t.integer "dni"
    t.string "nombre"
    t.integer "edad"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_pedidos", force: :cascade do |t|
    t.integer "id_detalle"
    t.integer "id_pedido"
    t.integer "id_producto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.integer "id_oferta"
    t.integer "id_producto"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "id_pedido"
    t.integer "dni"
    t.date "fecha_pedido"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer "id_producto"
    t.string "nombre"
    t.string "categoria"
    t.decimal "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_intranets", force: :cascade do |t|
    t.integer "id_usuario"
    t.string "nombre"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
