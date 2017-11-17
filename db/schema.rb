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

ActiveRecord::Schema.define(version: 20171117213310) do

  create_table "acabados", force: :cascade do |t|
    t.string "tipo_de_acabado"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cantidades_tintas", force: :cascade do |t|
    t.integer "detalle_pedido_id"
    t.integer "tinta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detalle_pedido_id"], name: "index_cantidades_tintas_on_detalle_pedido_id"
    t.index ["tinta_id"], name: "index_cantidades_tintas_on_tinta_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "nit"
    t.string "direccion"
    t.string "telefono"
    t.string "correo"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string "nombre_contacto"
    t.string "telefono"
    t.string "celular"
    t.string "correo"
    t.integer "cliente_id"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contactos_on_cliente_id"
  end

  create_table "descripcion_acabados", force: :cascade do |t|
    t.integer "detalle_pedido_id"
    t.integer "acabado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acabado_id"], name: "index_descripcion_acabados_on_acabado_id"
    t.index ["detalle_pedido_id"], name: "index_descripcion_acabados_on_detalle_pedido_id"
  end

  create_table "detalles_pedido", force: :cascade do |t|
    t.integer "pedido_id"
    t.string "sustrato"
    t.integer "tecnica_de_impresion_id"
    t.float "cantidad"
    t.float "precio"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_detalles_pedido_on_pedido_id"
    t.index ["tecnica_de_impresion_id"], name: "index_detalles_pedido_on_tecnica_de_impresion_id"
  end

  create_table "mini_pedidos", force: :cascade do |t|
    t.string "nombre"
    t.integer "cantidad"
    t.integer "pedido_id"
    t.integer "tinta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_mini_pedidos_on_pedido_id"
    t.index ["tinta_id"], name: "index_mini_pedidos_on_tinta_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "contacto_id"
    t.string "Producto"
    t.string "tipo_de_trabajo"
    t.string "fecha_entrega"
    t.string "fecha_de_pedido"
    t.string "numero_cotizacion"
    t.string "forma_de_pago"
    t.string "arte"
    t.text "observaciones"
    t.string "estado_pedidos"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contacto_id"], name: "index_pedidos_on_contacto_id"
  end

  create_table "tecnicas_de_impresion", force: :cascade do |t|
    t.string "tecnica"
    t.string "descripcion"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tintas", force: :cascade do |t|
    t.string "codigo"
    t.string "pantone"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
