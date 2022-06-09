class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.datetime :start_day
      t.datetime :reserve_day 
      t.datetime :end_day
      t.integer :sum_price

      t.timestamps
    end
  end
end
