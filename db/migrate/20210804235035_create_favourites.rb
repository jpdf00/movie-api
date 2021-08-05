class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.references :users
      t.references :movies

      t.timestamps
    end
  end
end
