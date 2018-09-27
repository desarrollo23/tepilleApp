class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :lastName
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
