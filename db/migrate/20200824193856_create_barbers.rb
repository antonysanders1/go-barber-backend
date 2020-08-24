class CreateBarbers < ActiveRecord::Migration[6.0]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :email
      t.city_id :
      t.string :online_status
      t.string :booked_status

      t.timestamps
    end
  end
end
