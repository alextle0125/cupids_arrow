class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :promo_code
      t.integer :promo_type
      t.float :promo_discounted_percentage
      t.float :promo_discounted_total
    end
  end
end
