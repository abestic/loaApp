class Contact < ActiveRecord::Base
  attr_accessible :client_id, :email, :first_name, :last_name, :active

  belongs_to :client

  def full_name
  	"#{first_name} #{last_name}"
  end

  scope :current, where(:active => true)

end
