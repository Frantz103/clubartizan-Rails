class AddLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :zipcode, :integer

    add_index :users, [:city, :zipcode], unique: true 
  end
end
