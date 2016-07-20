class AddAboutToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :about, :text
  end
end
