class AddIndexToMovies < ActiveRecord::Migration[5.2]
  def change
    add_index :movies, :id
  end
end
