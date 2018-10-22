class CreateRulesSets < ActiveRecord::Migration[5.2]
  def change
    create_table :rule_sets do |t|
      t.string :name
      t.string :description
      t.integer :card_count

      t.integer :card_archetype_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
