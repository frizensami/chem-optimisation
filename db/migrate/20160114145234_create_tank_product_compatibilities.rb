class CreateTankProductCompatibilities < ActiveRecord::Migration
  def change
    create_table :tank_product_compatibilities do |t|
      t.belongs_to :tank, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
