class AddClientIdToLoa < ActiveRecord::Migration
  def change
    add_column :loas, :client_id, :integer
  end
end
