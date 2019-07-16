class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.belongs_to :resume, foreign_key: true
      t.string :position
      t.string :description
      t.integer :year

      t.timestamps
    end
  end
end
