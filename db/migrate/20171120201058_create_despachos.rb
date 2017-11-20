class CreateDespachos < ActiveRecord::Migration[5.1]
  def change
    create_table :despachos do |t|
      t.references :cliente, foreign_key: true
      t.string :nombre
      t.string :lugar_de_entrega
      t.string :telefono
      t.string :celular
      t.string :correo

      t.timestamps
    end
  end
end
