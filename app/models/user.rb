class User < ApplicationRecord
    has_many :slots
    has_many :tours, through: :slots 

    validates :first_name, presence: true 
    validates :last_name, presence: true
    validates :email, presence: true 
    validates :password, presence: true
end
