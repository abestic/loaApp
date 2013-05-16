class RemoveStateIdFromClient < ActiveRecord::Migration
  def up
    remove_column :clients, :state_id
  end

  def down
    add_column :clients, :state_id, :integer
  end
end
