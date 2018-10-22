class CreateCardArchetypes < ActiveRecord::Migration[5.2]
  def change
    create_table :card_archetypes do |t|
      t.string :name
      t.string :type
      t.string :type
      t.string :subtype
      t.text :description
      t.integer :item_id

      t.timestamps
    end
  end
end
