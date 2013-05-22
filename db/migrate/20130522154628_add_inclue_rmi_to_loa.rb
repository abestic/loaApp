class AddInclueRmiToLoa < ActiveRecord::Migration
  def change
    add_column :loas, :include_rmi, :boolean
  end
end
