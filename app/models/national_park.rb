class NationalPark < ApplicationRecord

    has_many :campsites
    has_many :tours
    has_many :reviews

    def national_park_count
        self.national_parks.length
    end

end
