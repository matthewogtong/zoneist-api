class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :tokens
  has_many :tags
  has_many :usertrinkets
  has_many :userregions
  has_many :trinkets, through: :usertrinkets
  has_many :regions, through: :userregions
  has_many :zones
end
