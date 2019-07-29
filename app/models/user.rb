class User < ApplicationRecord

    has_many :bookings
    has_many :campsites, through: :bookings
    has_many :slots
    has_many :tours, through: :slots
    has_many :reviews
    has_many :national_parks, through: :reviews

end
