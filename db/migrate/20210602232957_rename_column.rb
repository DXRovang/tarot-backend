class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :draws, :card_ids, :card
  end
end
