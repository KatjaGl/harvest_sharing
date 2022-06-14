class ChangeGardenProductsReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :garden_products, :characteristic
  end
end
