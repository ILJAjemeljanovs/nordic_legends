class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.boolean :played
      t.integer :card_archetype_id
      t.integer :deck_id
      t.integer :hand_id
      t.integer :batllefield_id

      t.timestamps
    end
  end
end
