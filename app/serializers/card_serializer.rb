class CardSerializer < ActiveModel::Serializer
  attributes  :id, 
              :name, 
              :draw_id, 
              :cardType, 
              :summary, 
              :image, 
              :meaning_up,
              :meaning_rev,
              :desc
end
 