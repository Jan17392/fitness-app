class AddOwnerToClub < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :club, foreign_key: true
  end
end
