class CreateRols < ActiveRecord::Migration[5.2]
  def change
    create_table :rols do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
