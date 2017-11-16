class CreateAcabados < ActiveRecord::Migration[5.1]
  def change
    create_table :acabados do |t|
      t.string :tipo_de_acabado
      t.string :descripcion

      t.timestamps
    end
  end
end
