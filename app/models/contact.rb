class Contact < ActiveRecord::Base
  attr_accessible :active, :email, :first_name, :last_name

  has_one :client
  
end
