class AppointmentSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :customer
  belongs_to :barber
  belongs_to :service
end
