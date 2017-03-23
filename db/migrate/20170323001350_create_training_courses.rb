class CreateTrainingCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :training_courses do |t|
      t.references :training_room, foreign_key: true
      t.references :employee, foreign_key: true
      t.integer :participants_min
      t.integer :participants_max
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :isrecurring
      t.string :name
      t.decimal :fee
      t.text :description

      t.timestamps
    end
  end
end
