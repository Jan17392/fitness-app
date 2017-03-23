class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.references :employee_type, foreign_key: true
      t.date :birthdate
      t.decimal :salary
      t.string :phone_home
      t.string :phone_mobile
      t.string :email
      t.integer :gender
      t.string :photo
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
