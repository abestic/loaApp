class AddDetailsToLoa < ActiveRecord::Migration
  def change
    add_column :loas, :agent, :boolean
    add_column :loas, :internet_tracing, :boolean
    add_column :loas, :voice_tracing, :boolean
    add_column :loas, :customer_support, :boolean
    add_column :loas, :customer_417, :boolean
    add_column :loas, :error_824, :boolean
    add_column :loas, :ack_997, :boolean
    add_column :loas, :cancel_998, :boolean
    add_column :loas, :clm, :boolean
    add_column :loas, :interchange_receipt, :boolean
    add_column :loas, :bol_web, :boolean
    add_column :loas, :bol_edi, :boolean
    add_column :loas, :diversion, :boolean
    add_column :loas, :price_lookup, :boolean
    add_column :loas, :customer_contract, :boolean
    add_column :loas, :rate_negotiation, :boolean
    add_column :loas, :veiw_freight_inv, :boolean
    add_column :loas, :pay_freight_inv, :boolean
    add_column :loas, :dispute_freight_inv, :boolean
    add_column :loas, :view_incidental_inv, :boolean
    add_column :loas, :pay_incidental_inv, :boolean
    add_column :loas, :dispute_incidental_inv, :boolean
    add_column :loas, :switch_release, :boolean
    add_column :loas, :equipment_order, :boolean
  end
end
