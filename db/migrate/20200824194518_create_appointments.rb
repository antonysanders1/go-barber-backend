class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :service_id
      t.integer :customer_id
      t.integer :barber_id
      t.string :status

      t.timestamps
    end
  end
end
