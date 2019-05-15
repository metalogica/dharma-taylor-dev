class AddCopyrightToFooter < ActiveRecord::Migration[5.1]
  def change
    add_column :footers, :copyright, :string
  end
end
