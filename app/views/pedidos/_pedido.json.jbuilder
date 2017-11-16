json.extract! pedido, :id, :contacto_id, :Producto, :tipo_de_trabajo, :fecha_entrega, :fecha_de_pedido, :numero_cotizacion, :forma_de_pago, :arte, :observaciones, :estado_pedidos, :estado, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
