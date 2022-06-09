class AddAvaterToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :avatar, :string
  end
end
