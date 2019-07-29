class Campsite < ApplicationRecord

    has_many :bookings
    has_many :users, through: :bookings
    belongs_to :national_park

end
