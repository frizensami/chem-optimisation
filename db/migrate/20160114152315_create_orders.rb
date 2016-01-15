class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :volume
      t.datetime :expiry
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
