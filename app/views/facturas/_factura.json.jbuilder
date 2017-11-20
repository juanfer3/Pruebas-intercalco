json.extract! factura, :id, :cliente_id, :nombre, :nit, :telefono, :lugar_de_factura, :telefono, :correo, :recibe, :created_at, :updated_at
json.url factura_url(factura, format: :json)
