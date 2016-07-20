class AddCurrency < ActiveRecord::Migration
  def change
  	 add_column :records, :currency_id, :integer
  end
end
