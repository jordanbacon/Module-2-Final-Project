class User < ApplicationRecord

    has_many :bookings
    has_many :campsites, through: :bookings
    has_many :slots
    has_many :tours, through: :slots
    has_many :reviews
    has_many :national_parks, through: :reviews

    validates :name, presence: true 
    validates :email_address, presence: true, uniqueness: true
    validates :password, presence: true

    has_secure_password

    def has_campsites
        if self.campsites.length > 0
            true
        else
            false
        end
    end

    def campsite_count
        self.campsites.length
    end

    def has_tours
        if self.tours.length > 0
            true
        else
            false
        end
    end
    
    def tour_count
        self.tours.length
    end

    def has_reviews
        if self.reviews.length > 0
            true
        else
            false
        end
    end

    def review_count
        self.reviews.length
    end

    def has_booking(campsite)
        if self.campsites.include?(campsite)
            true
        else
            false
        end
    end

    def has_slot(tour)
        if self.tours.include?(tour)
            true
        else
            false
        end
    end

end
