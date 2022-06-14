class ChangeGardens < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :gardens, :reviews
  end
end
