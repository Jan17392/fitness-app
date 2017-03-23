class CreateAdditionalServices < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_services do |t|
      t.references :club, foreign_key: true
      t.string :name
      t.decimal :fee
      t.text :description

      t.timestamps
    end
  end
end
