class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.boolean :visibility, null: false, default: true
      t.boolean :highlight, null: false, default: false
      t.timestamps
    end
  end
end
