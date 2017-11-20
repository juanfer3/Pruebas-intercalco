json.extract! pedido, :id, :contacto_id, :producto, :tipo_de_trabajo, :fecha_entrega, :fecha_de_pedido, :numero_pedido, :linea_de_impresion_id, :numero_cotizacion, :forma_de_pago, :arte, :observaciones, :estado_pedido, :total_fechas_decompromiso, :estado, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
