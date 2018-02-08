class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.belongs_to :project
      t.integer :nature, null: false, default: 0
      t.string :url, null: false
      t.timestamps
    end
  end
end
