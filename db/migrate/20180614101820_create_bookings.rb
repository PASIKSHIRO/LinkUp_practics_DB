class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :item
      t.belongs_to :user
      t.datetime :data_start_rent
      t.datetime :data_end_rent
      t.timestamps
    end
  end
end
