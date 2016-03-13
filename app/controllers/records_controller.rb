class RecordsController < ApplicationController
	def welcome
		#log in page
	end
	def index
		@records=Record.all
	end
	def new
		@record=Record.new
	end
	def create		
		@record = Record.new(record_params)
		@record.save
		redirect_to records_path
	end
	def destroy
		puts params
		@record=Record.find(params[:id])
		@record.destroy
		redirect_to records_path
	end
	def show
		@record = Record.find(params[:id])
	end
	def edit
		@record = Record.find(params[:id])
	end	
	def update
		@record = Record.find(params[:id])
		@record.update(record_params)		
		redirect_to records_path		
	end
	private
	#for Strong Parameters
	#to read :name & :detail from params[:record]
	def record_params
  		params.require(:record).permit(:name, :detail, :date, :pay_way, :money, :group, :is_income)
	end	

end
