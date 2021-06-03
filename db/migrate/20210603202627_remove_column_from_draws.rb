class RemoveColumnFromDraws < ActiveRecord::Migration[6.1]
  def change
    remove_column :draws, :interpretation, :text
