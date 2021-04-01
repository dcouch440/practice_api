class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :melee
      t.string :ranged
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
