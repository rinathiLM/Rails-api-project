class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.date :hike_date
      t.string :hike_name
      t.string :city
      t.string :state
      t.integer :elevation_gain
      t.float :miles_rt
      t.time :duration
      t.integer :difficulty
      t.integer :rating
      t.string :notes

      t.timestamps
    end
  end
end
