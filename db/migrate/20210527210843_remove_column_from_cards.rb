class RemoveColumnFromCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :description, :string
  end
end
