class CreateEstacions < ActiveRecord::Migration[5.2]
  def change
    create_table :estacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
