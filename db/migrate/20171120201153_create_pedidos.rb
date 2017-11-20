class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.references :contacto, foreign_key: true
      t.references :despacho, foreign_key: true
      t.references :factura, foreign_key: true
      t.string :producto
      t.string :tipo_de_trabajo
      t.date :fecha_entrega
      t.date :fecha_de_pedido
      t.string :numero_pedido
      t.references :linea_de_impresion, foreign_key: true
      t.string :numero_cotizacion
      t.string :forma_de_pago
      t.string :arte
      t.text :observaciones
      t.string :estado_pedido
      t.float :total_fechas_decompromiso
      t.boolean :estado

      t.timestamps
    end
  end
end
