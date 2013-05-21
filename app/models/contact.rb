class Contact < ActiveRecord::Base
  attr_accessible :client_id, :email, :first_name, :last_name, :active, :phone, :fax, :title

  belongs_to :client

  scope :current, where(:active => true)

  def full_name
  	"#{first_name} #{last_name}"
  end

  validates_presence_of :first_name, :last_name, :email

end
