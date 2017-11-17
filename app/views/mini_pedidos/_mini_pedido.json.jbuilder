json.extract! mini_pedido, :id, :nombre, :cantidad, :pedido_id, :tinta_id, :created_at, :updated_at
json.url mini_pedido_url(mini_pedido, format: :json)
