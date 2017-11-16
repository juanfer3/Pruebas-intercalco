json.extract! cliente, :id, :nombre, :nit, :direccion, :telefono, :correo, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
