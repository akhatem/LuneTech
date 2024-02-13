require "csv"

class Opinion < ApplicationRecord
    belongs_to :film
    
    validates_presence_of :film
    validates_presence_of :user
    validates_presence_of :stars

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        puts row;
        # Opinion.create! row.to_hash
        end
    end
end
