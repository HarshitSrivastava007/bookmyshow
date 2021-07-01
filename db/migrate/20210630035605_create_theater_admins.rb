class CreateTheaterAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :theater_admins do |t|
      t.references :theater, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
