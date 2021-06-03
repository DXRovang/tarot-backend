class AddColumnToDraws < ActiveRecord::Migration[6.1]
  def change
    add_column :draws, :interpretation, :text
  end
end
