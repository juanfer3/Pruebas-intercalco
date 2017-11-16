class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.references :contacto, foreign_key: true
      t.string :Producto
      t.string :tipo_de_trabajo
      t.string :fecha_entrega
      t.string :fecha_de_pedido
      t.string :numero_cotizacion
      t.string :forma_de_pago
      t.string :arte
      t.text :observaciones
      t.string :estado_pedidos
      t.boolean :estado

      t.timestamps
    end
  end
end
