class AddColumnToCard < ActiveRecord::Migration[6.1]
  def change
    add_reference :cards, :draw, foreign_key: true
  end
end
