class Tour < ApplicationRecord

    has_many :slots
    has_many :users, through: :slots
    belongs_to :national_park

end
