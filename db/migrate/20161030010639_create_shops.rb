class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :contact_no
      t.string :alt_contact_no
      t.string :email
      t.string :website
      t.string :image_url
      t.string :logo_url
      t.string :theme
      t.boolean :main_branch
      t.string :status
      t.references :hair_dresser, foreign_key: true

      t.timestamps
    end
  end
end
