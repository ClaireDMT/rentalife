class AddUserRefToLives < ActiveRecord::Migration[5.2]
  def change
    add_reference :lives, :user, foreign_key: true
  end
end
