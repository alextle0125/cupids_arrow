class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.references :user_to, index: true, foreign_key: true
    end
  end
end
