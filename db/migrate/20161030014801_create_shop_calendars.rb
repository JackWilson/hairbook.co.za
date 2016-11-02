class CreateShopCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_calendars do |t|
      t.belongs_to :shop, foreign_key: true
      t.references :stylist, foreign_key: true
      t.datetime :slot_start
      t.integer :duration
      t.datetime :slot_end
      t.boolean :available

      t.timestamps
    end
  end
end
