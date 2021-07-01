class AddImageToAsset < ActiveRecord::Migration[6.1]
  def change
    add_column :assets, :image, :string
  end
end
