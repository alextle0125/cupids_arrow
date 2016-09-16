class CreateCupidsArrows < ActiveRecord::Migration
  def change
    create_table :cupids_arrows do |t|
      t.string :longitude
      t.string :latitude
      t.string :email
      t.string :first_name
      t.string :last_name
      t.references :order, index: true, foreign_key: true
    end
  end
end
