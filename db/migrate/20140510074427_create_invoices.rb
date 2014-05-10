class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.datetime :date
      t.string :make
      t.string :model
      t.string :serial_number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.text :request
      t.text :description
      t.text :remarks
      t.decimal :parts, precision: 2
      t.decimal :tax, precision: 2
      t.decimal :service_call, precision: 2
      t.decimal :labor, precision: 2
      t.decimal :total, precision: 2
      t.timestamps
    end
  end
end
