class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :order
      t.string :product_name

      t.timestamps
    end
  end
end
