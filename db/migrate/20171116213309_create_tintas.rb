class CreateTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :tintas do |t|
      t.string :codigo
      t.string :pantone
      t.string :descripcion

      t.timestamps
    end
  end
end
