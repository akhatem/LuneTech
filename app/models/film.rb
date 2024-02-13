class Film < ApplicationRecord
    belongs_to :film
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
end
