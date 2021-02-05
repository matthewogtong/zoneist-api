class User < ApplicationRecord
    has_many :zones
    has_many :usertrinkets
    has_many :userregions
    has_many :tags
    has_many :trinkets, through: :usertrinkets
    has_many :regions, through: :userregions
end
