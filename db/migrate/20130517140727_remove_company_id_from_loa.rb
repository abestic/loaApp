class RemoveCompanyIdFromLoa < ActiveRecord::Migration
  def up
    remove_column :loas, :company_id
  end

  def down
    add_column :loas, :company_id, :integer
  end
end
