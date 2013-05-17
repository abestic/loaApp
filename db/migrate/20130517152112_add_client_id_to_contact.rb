class AddClientIdToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :client_id, :integer
  end
end
