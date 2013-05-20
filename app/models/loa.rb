class Loa < ActiveRecord::Base
  attr_accessible :carrier_id, :client_id, :effective_date, :expiration_date

  belongs_to :client
  has_one :carrier


  scope :expired, where('expiration_date < ?', Date.today)
  scope :valid, where('expiration_date >= ?', Date.today)

end
