class ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :draws, :reading, :text
  end
end
