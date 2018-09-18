class CreateFotoReportes < ActiveRecord::Migration[5.2]
  def change
    create_table :foto_reportes do |t|
      t.references :fotos, foreign_key: true
      t.references :reportes, foreign_key: true

      t.timestamps
    end
  end
end
