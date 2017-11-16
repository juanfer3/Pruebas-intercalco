json.extract! detalle_pedido, :id, :pedido_id, :sustrato, :tecnica_de_impresion_id, :cantidad, :precio, :total, :created_at, :updated_at
json.url detalle_pedido_url(detalle_pedido, format: :json)
