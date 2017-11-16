class CreateCantidadesTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :cantidades_tintas do |t|
      t.references :detalle_pedido, foreign_key: true
      t.references :tinta, foreign_key: true

      t.timestamps
    end
  end
end
