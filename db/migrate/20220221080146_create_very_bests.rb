class CreateVeryBests < ActiveRecord::Migration[6.0]
  def change
    create_table :very_bests do |t|
      t.string :notes
      t.integer :dish_id
      t.integer :venue_id
      t.integer :user_id

      t.timestamps
    end
  end
end
