class DrawSerializer < ActiveModel::Serializer
  attributes :id, :layout, :reading, :created_at
  has_many :cards
end
