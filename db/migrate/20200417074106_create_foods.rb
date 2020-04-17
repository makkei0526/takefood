class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.text :image
      t.integer :price, null: false
      t.references :shop,  foreign_key: true

      t.timestamps
    end
  end
end
