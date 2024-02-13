namespace :db do

    desc "Import reviews from CSV file"
  
    task import: :environment do
  
      require 'csv'
      csv_path = Dir.pwd + "/files/reviews.csv";
  
  
      CSV.foreach(csv_path, headers: true) do |row|
        Film.create!(
          movie: row["Movie"],  
          user: row["User"],
          stars: row["Stars"],
          review: row["Review"]
        )
      end
    end
  end