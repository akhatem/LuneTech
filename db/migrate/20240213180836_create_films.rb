class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :movie
      t.text :description
      t.date :year
      t.string :director
      t.string :actor
      t.string :filming_location
      t.string :country
      t.timestamps
    end
  end
end
