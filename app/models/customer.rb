class Customer < ApplicationRecord
    has_many :appointments
    has_many :barbers, through: :appointments
    belongs_to :city

    validates :name, presence: true
    validates :email, uniqueness: true
end
