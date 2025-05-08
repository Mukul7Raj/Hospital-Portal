class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth, null: false
      t.string :gender
      t.string :phone_number
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end