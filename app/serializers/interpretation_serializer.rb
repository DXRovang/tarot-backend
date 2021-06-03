class InterpretationSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :draw
end
