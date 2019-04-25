class AddUserUploadToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :user_upload, :json
  end
end
