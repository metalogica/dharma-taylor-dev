class ChangeImagesToUserUpload < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :images, :user_upload
  end
end
