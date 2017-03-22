class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_home
      t.string :phone_mobile
      t.date :birthdate
      t.integer :gender
      t.string :photo

      t.timestamps
    end
  end
end
