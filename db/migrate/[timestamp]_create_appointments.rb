class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :scheduled_at, null: false
      t.string :status, default: 'pending'

      t.timestamps
    end
  end
end