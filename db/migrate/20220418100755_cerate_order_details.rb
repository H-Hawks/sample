class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :products_id
      t.integer :orders_id
      t.integer :tax_price
      t.integer :quantity
      t.integer :production_status
      t.timestamps
    end
  end
end
