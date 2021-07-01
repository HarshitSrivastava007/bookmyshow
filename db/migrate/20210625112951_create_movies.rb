class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :language
      t.string :category
      t.text :description
      t.float :runtime
      t.date :release_date

      t.timestamps
    end
  end
end
