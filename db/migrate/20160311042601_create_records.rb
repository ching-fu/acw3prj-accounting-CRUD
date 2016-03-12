class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.string :name
      t.integer :money
      t.boolean :is_income
      t.text :detail
      #pay_way, 0=cash 1=card 2=atm
      t.integer :pay_way
      #is type a keyword??
      t.string :type
      t.string :group
      t.boolean :is_public

      t.timestamps null: false
    end
  end
end
