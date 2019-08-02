class Review < ApplicationRecord

    belongs_to :user
    belongs_to :national_park

    validates :national_park_id, presence: true 
    validates :user_id, presence: true
    validates :description, presence: true

    # def review_count
    #     self.reviews.length
    # end

end