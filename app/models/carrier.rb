class Carrier < ActiveRecord::Base
  attr_accessible :active, :code, :name

  has_many :loas

end
