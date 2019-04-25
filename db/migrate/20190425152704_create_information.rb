class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.text :information

      t.timestamps
    end
  end
end
