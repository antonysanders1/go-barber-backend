class BarberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  belongs_to :city
end
