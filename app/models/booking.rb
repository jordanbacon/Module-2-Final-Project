class Booking < ApplicationRecord

    belongs_to :user, optional:true
    belongs_to :campsite

    validates :time, presence: true

end
