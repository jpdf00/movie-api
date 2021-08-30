class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :runtime
      t.date :year

      t.timestamps
    end
  end
end
