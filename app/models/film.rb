require "csv"

class Film < ApplicationRecord
    belongs_to :film
    has_many :opinions
    
    validates_presence_of :movie;
    validates_presence_of :description;
    validates_presence_of :year;
    validates_presence_of :director;
    validates_presence_of :actor;

    def self.search_by(search_term)
        if search_term
            where("actor ILIKE ?", "%" + search_term + "%");
        else
            Film.all
        end
    end

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        puts row;
        # Film.create! row.to_hash
        end
    end
end
