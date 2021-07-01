class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
