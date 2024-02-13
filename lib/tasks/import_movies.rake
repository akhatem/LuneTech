namespace :db do

    desc "Import movies from CSV file"
  
    task import: :environment do
  
      require 'csv'
      csv_path = Dir.pwd + "/files/movies.csv";
  
  
      CSV.foreach(csv_path, headers: true) do |row|
        Film.create!(
  
          movie: row["Movie"],  
          description: row["Description"],
          year: row["Year"],
          director: row["Director"],
          actor: row["Actor"],
          filming_location: row["Filming location"],
          country: row["Country"],
        )
      end
    end
  end