class AddAllColumnsToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :cardType, :string
    add_column :cards, :summary, :text
    add_column :cards, :image, :string
    add_column :cards, :meaning_up, :text
    add_column :cards, :meaning_rev, :text
    add_column :cards, :desc, :text
  end
end
