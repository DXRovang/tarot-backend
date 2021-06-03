class RemoveReadingFromDraws < ActiveRecord::Migration[6.1]
  def change
    remove_column :draws, :reading, :text
  end
end
