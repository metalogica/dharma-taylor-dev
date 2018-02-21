class RenameOrderColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :order, :project_order
  end
end
