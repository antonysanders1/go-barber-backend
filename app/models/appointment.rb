class Appointment < ApplicationRecord
   after_initialize :set_defaults
   belongs_to :customer
   belongs_to :barber
   belongs_to :service

   validates_inclusion_of :status, :in => ["not started", "started", "completed"]

   def set_defaults
      self.status ||= "not started"
   end
end
