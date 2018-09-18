class CreateGeneros < ActiveRecord::Migration[5.2]
  def change
    create_table :generos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
