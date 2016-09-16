class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :total_price
      t.float :sub_total
      t.float :sales_tax
      t.integer :item_count
      t.references :item, index: true, foreign_key: true
      t.string :full_shipping_address
      t.string :state
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :delivery_tags, index: true, foreign_key: true
    end
  end
end
