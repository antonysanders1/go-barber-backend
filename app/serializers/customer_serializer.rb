class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :appointments
  belongs_to :city
end
