class DrawSerializer < ActiveModel::Serializer
  attributes :id, :layout, :created_at, :card
  has_many :interpretations
end
