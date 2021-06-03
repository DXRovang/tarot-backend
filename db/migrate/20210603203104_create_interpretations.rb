class CreateInterpretations < ActiveRecord::Migration[6.1]
  def change
    create_table :interpretations do |t|
      t.text :body
      t.belongs_to :draw, null: false, foreign_key: true

      t.timestamps
    end
  end
end
