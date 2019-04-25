class ChangeInformationToAboutInInformation < ActiveRecord::Migration[5.1]
  def change
    rename_column :information, :information, :about
  end
end
