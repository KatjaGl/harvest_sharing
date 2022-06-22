class DropFavoris < ActiveRecord::Migration[6.1]
  def change
    drop_table :favorites
  end
end
