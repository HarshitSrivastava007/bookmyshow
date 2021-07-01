class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :booking, null: false, foreign_key: true
      t.string :medium
      t.string :status
      t.integer :transection_id

      t.timestamps
    end
  end
end
