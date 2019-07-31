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

    def my_campsites
        self.campsites
    end

    def campsite_count
        self.campsites.length
    end

    def my_tours
        self.tours
    end
    
    def tour_count
        self.tour.length
    end

end
