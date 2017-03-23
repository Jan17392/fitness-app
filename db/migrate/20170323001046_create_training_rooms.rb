class CreateTrainingRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :training_rooms do |t|
      t.integer :capacity
      t.references :club, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
