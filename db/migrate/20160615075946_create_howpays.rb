class CreateHowpays < ActiveRecord::Migration
  def change
    create_table :howpays do |t|
      t.string :way
      t.string :bank

      t.timestamps null: false
    end
  end
end
