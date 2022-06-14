class AddPresentationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :presentation, :text
  end
end
