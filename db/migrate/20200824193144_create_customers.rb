class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :street_address
      t.integer :city_id

      t.timestamps
    end
  end
end
