class CreateShopStylists < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_stylists do |t|
      t.belongs_to :shop, foreign_key: true
      t.references :stylist, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
