class CreateGardenProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :garden_products do |t|
      t.integer :quantity
      t.text :detail_product
      t.references :characteristic, null: false, foreign_key: true
      t.references :garden, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
