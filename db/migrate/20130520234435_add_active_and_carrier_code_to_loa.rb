class AddActiveAndCarrierCodeToLoa < ActiveRecord::Migration
  def change
    add_column :loas, :active, :boolean
    add_column :loas, :carrier_code, :string
  end
end
