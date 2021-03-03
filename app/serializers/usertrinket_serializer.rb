class UsertrinketSerializer < ActiveModel::Serializer
  attributes :id, :is_bought
  # has_one :user
  # has_one :trinket
end
