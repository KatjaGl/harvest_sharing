class CreateGardens < ActiveRecord::Migration[6.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :address
      t.references :review, null: false, foreign_key: true
      t.text :detail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
