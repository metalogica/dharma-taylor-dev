class AddFilenameToImage < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :filename, :string
  end
end
