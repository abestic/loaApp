class AddPhoneandFaxandTitleToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :phone, :string
    add_column :contacts, :fax, :string
    add_column :contacts, :title, :string
  end
end
