class CreateHairDressers < ActiveRecord::Migration[5.0]
  def change
    create_table :hair_dressers do |t|
      t.string :name
      t.string :logo_url
      t.string :status

      t.timestamps
    end
  end
end
