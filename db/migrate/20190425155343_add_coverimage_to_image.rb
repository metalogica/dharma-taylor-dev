class AddCoverimageToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :coverimage, :boolean
  end
end
