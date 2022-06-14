class ChangeGardensReferences < ActiveRecord::Migration[6.1]
  def change
    remove_column :gardens, :review_id

  end
end
