class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :phone
      t.text   :notes
      t.timestamps
    end
  end
end
