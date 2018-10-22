class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.text :cover
      t.integer :rules_set_id
      t.integer :game_id

      t.timestamps
    end
  end
end
