class Loa < ActiveRecord::Base
  attr_accessible :carrier_id, :client_id, :effective_date, :expiration_date, :active, :carrier_code, :pdf, :agent, :internet_tracing, 
  :voice_tracing, :customer_support, :customer_417, :error_824, :ack_997, :cancel_998, :clm, :interchange_receipt, :bol_web, :bol_edi,
  :diversion, :price_lookup, :customer_contract, :rate_negotiation, :view_freight_inv, :pay_freight_inv, :dispute_freight_inv, 
  :view_incidental_inv, :pay_incidental_inv, :dispute_incidental_inv, :switch_release, :equipment_order

  belongs_to :client
  has_one :carrier

  mount_uploader :pdf, PdfUploader

  scope :expired, where('expiration_date < ?', Date.today)
  scope :valid, where('expiration_date >= ?', Date.today)
  scope :warning, where('expiration_date < ?', Date.today + 30)
  scope :current, where(:active => true)

  def pdf_filename
    read_attribute(:pdf)
  end

  validates_presence_of :effective_date, :expiration_date, :carrier_code

end
