class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.text :description

      t.timestamps null: false
    end
  end
end
