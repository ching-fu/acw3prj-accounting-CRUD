class CreateCardbills < ActiveRecord::Migration
  def change
    create_table :cardbills do |t|
      t.date :paid_date

      t.timestamps null: false
    end
  end
end
