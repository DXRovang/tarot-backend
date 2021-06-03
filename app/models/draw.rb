class Draw < ApplicationRecord
  has_many :interpretations
  # serialize :card_ids, Array
  # validates_inclusion_of :layout, :in => ['one-card', 'five-card', 'celtic-cross']
end
