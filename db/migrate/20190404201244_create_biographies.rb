class CreateBiographies < ActiveRecord::Migration[5.1]
  def change
    create_table :biographies do |t|

      t.timestamps
    end
  end
end
