class CreateLoas < ActiveRecord::Migration
  def change
    create_table :loas do |t|
      t.integer :company_id
      t.integer :carrier_id
      t.date :effective_date
      t.date :expiration_date

      t.timestamps
    end
  end
end
