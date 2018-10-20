class CreateMetaTags < ActiveRecord::Migration[5.1]
  def change
    create_table :meta_tags do |t|
      t.string :page,         default: ''
      t.string :title,        default: ''
      t.string :keywords,     default: ''
      t.string :description,  default: ''
    end
  end
end
