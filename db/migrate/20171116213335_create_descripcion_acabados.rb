class CreateDescripcionAcabados < ActiveRecord::Migration[5.1]
  def change
    create_table :descripcion_acabados do |t|
      t.references :detalle_pedido, foreign_key: true
      t.references :acabado, foreign_key: true

      t.timestamps
    end
  end
end
