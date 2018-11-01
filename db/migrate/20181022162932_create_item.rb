class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :galery_id
      t.text :crop_data
      t.timestamps
    end
  end
end
