class Record < ActiveRecord::Base
	validates_presence_of :name, :date, :money, :howpay_id, :category_id, :currency
	belongs_to :category
	belongs_to :howpay
	belongs_to :cardbill
	belongs_to :currency	
end
