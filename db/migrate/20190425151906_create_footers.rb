class CreateFooters < ActiveRecord::Migration[5.1]
  def change
    create_table :footers do |t|
      t.string :telephone_contact
      t.string :email_primary
      t.string :email_contact
      t.string :location
      t.json :social_media

      t.timestamps
    end
  end
end
