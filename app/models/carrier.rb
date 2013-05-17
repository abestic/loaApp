class Carrier < ActiveRecord::Base
  attr_accessible :active, :code, :name

  has_many :loas

  scope :current, where(:active => true)
  
end
