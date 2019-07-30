class Slot < ApplicationRecord

    belongs_to :user
    belongs_to :tour

    # validates :tour_id, presence: true 
    # validates :user_id, presence: true
    # validates :time, length: { in: 9..12 }

end
