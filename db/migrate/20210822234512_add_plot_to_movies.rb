class AddPlotToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :plot, :text
  end
end
