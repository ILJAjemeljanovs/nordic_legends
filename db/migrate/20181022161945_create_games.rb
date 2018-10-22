class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :rule_set_id
      t.timestamps
    end
  end
end
