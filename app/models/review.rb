class Review < ApplicationRecord

    belongs_to :user
    belongs_to :national_park

end
