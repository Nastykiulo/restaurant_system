class CreateRestaurantWorkingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_working_hours do |t|
      t.references :restaurant, foreign_key: true
      t.references :day, foreign_key: true
      t.time :opening_time
      t.time :closing_time

      t.timestamps
    end
  end
end
