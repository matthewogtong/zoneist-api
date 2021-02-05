class Trinket < ApplicationRecord
    has_many :zones
    has_many :usertrinkets
    has_many :users, through: :usertrinkets
end
