class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at
  # has_one :user
end
