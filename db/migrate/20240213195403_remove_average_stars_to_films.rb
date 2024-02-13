class RemoveAverageStarsToFilms < ActiveRecord::Migration[7.1]
  def change
    remove_column :films, :average_stars
  end
end
