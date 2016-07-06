class ModifyRecord < ActiveRecord::Migration
  def change
  	remove_column :records, :pay_way
  	remove_column :records, :type
  	add_column :records, :category_id, :integer
  	add_column :records, :howpay_id, :integer
  end
end
