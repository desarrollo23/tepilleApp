class CreateReportes < ActiveRecord::Migration[5.2]
  def change
    create_table :reportes do |t|
      t.string :descripcion
      t.datetime :fecha
      t.string :ubicacion
      t.references :usuarios, foreign_key: true
      t.references :ruta, foreign_key: true
      t.references :estacions, foreign_key: true

      t.timestamps
    end
  end
end
