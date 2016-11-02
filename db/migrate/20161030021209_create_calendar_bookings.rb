class CreateCalendarBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_bookings do |t|
      t.belongs_to :booking, foreign_key: true
      t.references :shop_calendar, foreign_key: true
      t.boolean :occupy_chair

      t.timestamps
    end
  end
end
