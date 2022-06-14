class CreateGardenProductCharacteristics < ActiveRecord::Migration[6.1]
  def change
    create_table :garden_product_characteristics do |t|
      t.references :garden_product, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
