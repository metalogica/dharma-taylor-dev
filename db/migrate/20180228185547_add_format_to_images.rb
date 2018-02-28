class AddFormatToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :format, :integer, default: 0
    Image.photo.update_all(format: 1)
    Image.printable.update_all(format: 0)
    Image.videostill.update_all(format: 0)
  end
end
