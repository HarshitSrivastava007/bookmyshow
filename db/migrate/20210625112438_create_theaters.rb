class CreateTheaters < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
      t.string :name
      t.integer :no_of_screen
      t.integer :pincode
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
