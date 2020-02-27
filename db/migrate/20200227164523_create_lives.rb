class CreateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :lives do |t|
      t.string :title
      t.integer :price_per_day
      t.string :job
      t.string :city
      t.text :description
      t.string :marital_status
      t.integer :kids
      t.references :accommodation, foreign_key: true
      t.string :social_status

      t.timestamps
    end
  end
end
