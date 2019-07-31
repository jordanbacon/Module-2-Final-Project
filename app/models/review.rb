class Review < ApplicationRecord

    belongs_to :user
    belongs_to :national_park

    def review_count
        self.reviews.length
    end

end