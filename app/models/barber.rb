class Barber < ApplicationRecord
    after_initialize :set_defaults
    has_many :appointments
    has_many :customers, through: :appointments
    belongs_to :city

    validates :name, presence: true
    validates :email, uniqueness: true
    validates_inclusion_of :status, :in => ["offline", "online", "booked"]



    def set_defaults
        self.online_status ||= "offline"
    end
end
