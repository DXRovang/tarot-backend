class CardSerializer < ActiveModel::Serializer
  attributes  :id, 
              :name, 
              :cardType, 
              :summary, 
              :image, 
              :meaning_up,
              :meaning_rev,
              :desc
end
 