class CreateAccommodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accommodations do |t|
      t.string :type

      t.timestamps
    end
  end
end
