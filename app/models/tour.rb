class Tour < ApplicationRecord
    has_many :slots
    has_many :users, through: :slots 

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    # validates :slot_id, length: { is: 1 }
end
