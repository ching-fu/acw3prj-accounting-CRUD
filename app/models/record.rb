class Record < ActiveRecord::Base
	validates_presence_of :name, :date, :money, :pay_way
end
