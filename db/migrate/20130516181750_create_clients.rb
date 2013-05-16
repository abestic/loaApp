class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :state_id
      t.string :postal_code
      t.integer :contact_id
      t.boolean :active

      t.timestamps
    end
  end
end
