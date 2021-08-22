class AddPhotoToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :photo, :string
  end
end
