class Draw < ApplicationRecord
  has_many :cards
  # validates_inclusion_of :layout, :in => ['one-card', 'five-card', 'celtic-cross']
end
