class Slot < ApplicationRecord

    belongs_to :user, optional:true
    belongs_to :tour

    validates :tour_id, presence: true 
    # validates :user_id, presence: true
    validates :time, presence: true
    # length: { in: 9..12 }

end
