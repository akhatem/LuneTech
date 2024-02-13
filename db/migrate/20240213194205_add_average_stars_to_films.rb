class AddAverageStarsToFilms < ActiveRecord::Migration[7.1]
  def change
    add_column :films, :average_stars, :integer
  end
end
