class CreateDeliveryTags < ActiveRecord::Migration
  def change
    create_table :delivery_tags do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :to_user
    end
  end
end
