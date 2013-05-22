class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :loas, :veiw_freight_inv, :view_freight_inv
  end
end
