class NationalPark < ApplicationRecord

    has_many :campsites
    has_many :tours
    has_many :reviews

end
