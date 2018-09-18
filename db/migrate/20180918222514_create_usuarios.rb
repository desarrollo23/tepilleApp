class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :userName
      t.string :passwword
      t.references :rols, foreign_key: true

      t.timestamps
    end
  end
end
