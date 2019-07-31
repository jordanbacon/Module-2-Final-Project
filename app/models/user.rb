class User < ApplicationRecord

    has_many :bookings
    has_many :campsites, through: :bookings
    has_many :slots
    has_many :tours, through: :slots
    has_many :reviews
    has_many :national_parks, through: :reviews

    validates :name, presence: true 
    validates :email_address, presence: true 
    validates :password, presence: true

    has_secure_password

end
