class AddDescriptions < ActiveRecord::Migration
  def change
    add_column :books, :description, :text
    add_column :movies, :description, :text
    add_column :albums, :description, :text
  end
end
