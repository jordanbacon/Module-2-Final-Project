class Campsite < ApplicationRecord

    has_many :bookings
    has_many :users, through: :bookings
    belongs_to :national_park

    validates :site_number, presence: true
    validates :location, presence: true
    validates :accomodation, presence: true
    validates :price, presence: true
    validates :length_of_stay, presence: true

end