class CreateMiniPedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :mini_pedidos do |t|
      t.string :nombre
      t.integer :cantidad
      t.references :pedido, foreign_key: true
      t.references :tinta, foreign_key: true

      t.timestamps
    end
  end
end
