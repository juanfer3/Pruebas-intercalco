class CreateTiemposDeEntregas < ActiveRecord::Migration[5.1]
  def change
    create_table :tiempos_de_entregas do |t|
      t.references :pedido, foreign_key: true
      t.string :cantidad
      t.date :fecha_compromiso
      t.float :costo

      t.timestamps
    end
  end
end
