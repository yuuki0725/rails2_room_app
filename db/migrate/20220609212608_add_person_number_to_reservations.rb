class AddPersonNumberToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :person_number, :integer
  end
end
