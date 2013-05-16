class Client < ActiveRecord::Base
  attr_accessible :active, :address_1, :address_2, :city, :contact_id, :name, :postal_code, :state

  has_many :loas
  has_one :contact

end
