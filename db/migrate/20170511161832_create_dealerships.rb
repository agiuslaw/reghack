class CreateDealerships < ActiveRecord::Migration[5.0]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :address
      t.integer :postcode

      t.timestamps
    end
  end
end
