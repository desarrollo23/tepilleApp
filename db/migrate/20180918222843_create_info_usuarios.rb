class CreateInfoUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :info_usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :correo
      t.string :telefono
      t.references :localidads, foreign_key: true
      t.references :generos, foreign_key: true
      t.references :usuarios, foreign_key: true

      t.timestamps
    end
  end
end
