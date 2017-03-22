class CreateCustomerContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_contracts do |t|
      t.references :customer
      t.string :name
      t.date :notice_period
      t.date :start_date
      t.date :end_date
      t.date :cancellation_notice
      t.decimal :recurring_fee
      t.boolean :isactive
      t.decimal :application_fee
      t.boolean :automatic_renew

      t.timestamps
    end
  end
end
