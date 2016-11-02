class CreateShopWorkdays < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_workdays do |t|
      t.belongs_to :shop, foreign_key: true
      t.string :day
      t.time :start_time
      t.time :close_time
      t.boolean :open

      t.timestamps
    end
  end
end
