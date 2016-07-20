class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :ratio

      t.timestamps null: false
    end
  end
end
