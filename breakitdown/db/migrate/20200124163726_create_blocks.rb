class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :desctiption
      t.integer :mastery
      t.references :chunk, foreign_key: true

      t.timestamps
    end
  end
end
