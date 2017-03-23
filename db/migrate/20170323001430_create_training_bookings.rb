class CreateTrainingBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :training_bookings do |t|
      t.references :training_course, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
