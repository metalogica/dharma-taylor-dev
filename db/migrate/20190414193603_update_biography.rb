class UpdateBiography < ActiveRecord::Migration[5.1]
  def change
    add_column :biographies, :telephone_contact, :string
    add_column :biographies, :email_primary, :string
    add_column :biographies, :email_contact, :string
    add_column :biographies, :location, :string
    add_column :biographies, :social_media, :json
  end
end
