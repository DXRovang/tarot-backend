class CreateDraws < ActiveRecord::Migration[6.1]
  def change
    create_table :draws do |t|
      t.string :layout
      t.string :reading

      t.timestamps
    end
  end
end
