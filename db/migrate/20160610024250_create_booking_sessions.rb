class CreateBookingSessions < ActiveRecord::Migration
  def change
    create_table :booking_sessions do |t|
      
      t.datetime :booking_time
      t.integer :person
      t.string :location
     

      t.timestamps null: false
    end
  end
end
