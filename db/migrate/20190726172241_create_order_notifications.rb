class CreateOrderNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :order_notifications do |t|
      t.integer :order_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
