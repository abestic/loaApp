class AddPdfToLoa < ActiveRecord::Migration
  def change
    add_column :loas, :pdf, :string
  end
end
