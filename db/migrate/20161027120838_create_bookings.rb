class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :stylist, foreign_key: true
      t.references :client, foreign_key: true
      t.references :service, foreign_key: true
      t.datetime :date
      t.string :status

      t.timestamps
    end
  end
end
