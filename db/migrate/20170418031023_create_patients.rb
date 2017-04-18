class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :surname
      t.date :dob
      t.json :photo
      t.boolean :gender
      t.string :address1
      t.string :address2
      t.integer :post_code
      t.string :state
      t.string :country
      t.references :vaccinator, foreign_key: true

      t.timestamps
    end
  end
end
