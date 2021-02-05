class Region < ApplicationRecord
    has_many :zones
    has_many :userregions
    has_many :users, through: :userregions
end
