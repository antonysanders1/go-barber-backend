class City < ApplicationRecord
    has_many :customers
    has_many :barbers
end
