class CreateShopStylistWorkdays < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_stylist_workdays do |t|
      t.belongs_to :shop, foreign_key: true
      t.belongs_to :stylist, foreign_key: true
      t.string :day
      t.time :start_time
      t.time :end_time
      t.boolean :working
      t.date :effective_date
      t.date :end_date

      t.timestamps
    end
  end
end
