class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :vacc_type
      t.date :start_date
      t.date :end_date
      t.integer :batch_number
      t.references :vaccinator, foreign_key: true

      t.timestamps
    end
  end
end
