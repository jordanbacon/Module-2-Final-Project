class NationalPark < ApplicationRecord

    has_many :campsites
    has_many :tours
    has_many :reviews

    def has_campsites
        if self.campsites.length > 0
            true
        else
            false
        end
    end

    def has_tours
        if self.tours.length > 0
            true
        else
            false
        end
    end

    # def national_park_count
    #     self.national_parks.length
    # end

end
