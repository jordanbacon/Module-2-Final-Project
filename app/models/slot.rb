class Slot < ApplicationRecord
    belongs_to :tour
    belongs_to :user, optional: true

    validates :tour_id, presence: true 
    # validates :user_id, presence: true
    validates :time, presence: true #length: { in: 9..12 }
end
