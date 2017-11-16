class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :nit
      t.string :direccion
      t.string :telefono
      t.string :correo
      t.boolean :estado

      t.timestamps
    end
  end
end
