class CreateTecnicasDeImpresion < ActiveRecord::Migration[5.1]
  def change
    create_table :tecnicas_de_impresion do |t|
      t.string :tecnica
      t.string :descripcion
      t.boolean :estado

      t.timestamps
    end
  end
end
