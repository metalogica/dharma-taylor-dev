class RemoveCoverFromImage < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :cover
  end
end
