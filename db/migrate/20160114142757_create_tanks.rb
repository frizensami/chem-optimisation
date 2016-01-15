class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :name
      t.float :capacity_min
      t.float :capacity_max

      t.timestamps null: false
    end
  end
end
