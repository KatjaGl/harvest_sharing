class AddGardenIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :garden, null: false, foreign_key: true
  end
end
