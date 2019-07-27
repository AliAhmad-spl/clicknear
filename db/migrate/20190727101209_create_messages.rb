class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :message
      t.integer :shop_id

      t.timestamps
    end
  end
end
