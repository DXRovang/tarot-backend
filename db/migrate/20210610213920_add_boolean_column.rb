class AddBooleanColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :reversed, :boolean, :default => false
  end
end
