json.extract! despacho, :id, :cliente_id, :nombre, :lugar_de_entrega, :telefono, :celular, :correo, :created_at, :updated_at
json.url despacho_url(despacho, format: :json)
