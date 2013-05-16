class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :code
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
