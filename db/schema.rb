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

ActiveRecord::Schema.define(version: 20171120201153) do

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

  create_table "despachos", force: :cascade do |t|
    t.integer "cliente_id"
    t.string "nombre"
    t.string "lugar_de_entrega"
    t.string "telefono"
    t.string "celular"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_despachos_on_cliente_id"
  end

  create_table "detalles_pedido", force: :cascade do |t|
    t.integer "pedido_id"
    t.string "descripcion"
    t.string "producto"
    t.string "sustrato"
    t.integer "tecnica_de_impresion_id"
    t.string "tamano"
    t.float "cantidad"
    t.float "precio"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_detalles_pedido_on_pedido_id"
    t.index ["tecnica_de_impresion_id"], name: "index_detalles_pedido_on_tecnica_de_impresion_id"
  end

  create_table "facturas", force: :cascade do |t|
    t.integer "cliente_id"
    t.string "nombre"
    t.string "nit"
    t.string "telefono"
    t.string "lugar_de_factura"
    t.string "correo"
    t.string "recibe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_facturas_on_cliente_id"
  end

  create_table "lineas_de_impresiones", force: :cascade do |t|
    t.string "tipo_de_linea"
    t.string "descripcion"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "despacho_id"
    t.integer "factura_id"
    t.string "producto"
    t.string "tipo_de_trabajo"
    t.date "fecha_entrega"
    t.date "fecha_de_pedido"
    t.string "numero_pedido"
    t.integer "linea_de_impresion_id"
    t.string "numero_cotizacion"
    t.string "forma_de_pago"
    t.string "arte"
    t.text "observaciones"
    t.string "estado_pedido"
    t.float "total_fechas_decompromiso"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contacto_id"], name: "index_pedidos_on_contacto_id"
    t.index ["despacho_id"], name: "index_pedidos_on_despacho_id"
    t.index ["factura_id"], name: "index_pedidos_on_factura_id"
    t.index ["linea_de_impresion_id"], name: "index_pedidos_on_linea_de_impresion_id"
  end

  create_table "tecnicas_de_impresion", force: :cascade do |t|
    t.string "tecnica"
    t.string "descripcion"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiempos_de_entregas", force: :cascade do |t|
    t.integer "pedido_id"
    t.string "cantidad"
    t.date "fecha_compromiso"
    t.float "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_tiempos_de_entregas_on_pedido_id"
  end

  create_table "tintas", force: :cascade do |t|
    t.string "codigo"
    t.string "pantone"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
