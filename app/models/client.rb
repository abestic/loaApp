class Client < ActiveRecord::Base
  attr_accessible :active, :address_1, :address_2, :city, :contact_id, :name, :postal_code, :state

  has_many :loas
  has_many :contacts

  scope :current, where(:active => true)

  validates_presence_of :name, :address_1, :city, :state, :postal_code

end
