class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :curr_status
      t.integer :like_count
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :full_address
      t.string :longitude
      t.string :latitude
      t.string :curr_status_img
    end
  end
end
