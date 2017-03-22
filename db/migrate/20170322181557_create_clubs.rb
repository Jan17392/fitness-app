class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postcode
      t.string :country
      t.string :street_no
      t.string :description

      t.timestamps
    end
  end
end
