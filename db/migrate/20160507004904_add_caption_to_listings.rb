class AddCaptionToListings < ActiveRecord::Migration
  def change
    add_column :listings, :caption, :string
  end
end
