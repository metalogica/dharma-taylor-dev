class AddBlurbToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :blurb, :string
  end
end
