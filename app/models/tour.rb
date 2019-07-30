class Tour < ApplicationRecord

    has_many :slots
    has_many :users, through: :slots
    belongs_to :national_park

    # validates :name, presence: true
    # validates :description, presence: true
    # validates :price, presence: true

end
