class AddInformationToBiography < ActiveRecord::Migration[5.1]
  def change
    add_column :biographies, :information, :string
  end
end
