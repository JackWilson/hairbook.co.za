class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :firstName
      t.string :lastName
      t.string :image_url
      t.references :stylist, foreign_key: true
      t.string :sex
      t.string :contactNo
      t.string :email

      t.timestamps
    end
  end
end
