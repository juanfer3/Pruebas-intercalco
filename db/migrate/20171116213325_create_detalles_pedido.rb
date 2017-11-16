class CreateDetallesPedido < ActiveRecord::Migration[5.1]
  def change
    create_table :detalles_pedido do |t|
      t.references :pedido, foreign_key: true
      t.string :sustrato
      t.references :tecnica_de_impresion, foreign_key: true
      t.float :cantidad
      t.float :precio
      t.float :total

      t.timestamps
    end
  end
end
