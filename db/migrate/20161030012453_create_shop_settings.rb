class CreateShopSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_settings do |t|
      t.integer :calender_slot_size
      t.integer :days_ahead_calender
      t.belongs_to :shop, foreign_key: true
      t.date :start_date

      t.timestamps
    end
  end
end
