class RecordsController < ApplicationController
	def welcome
		#log in page
	end
	def index
		@records = Record.page(params[:page]).per(20)#for kaminari		
	end
	def new
		@record=Record.new
	end
	def create		
		@record = Record.new(record_params)
		if @record.save
			flash[:notice] ="successfully created"
			redirect_to records_path
		else
			flash[:alert] ="please ensure date, name, money, way are filled~~"
			render :action => :new #new.html.erb
		end		
	end
	def destroy
		puts params
		@record=Record.find(params[:id])
		@record.destroy
			flash[:notice] ="record is deleted~~"		
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
		if @record.update(record_params)
			flash[:notice] ="successfully updated"			
			redirect_to records_path		
		else
			flash[:alert] ="please ensure date, name, money, way are filled~~"			
			render :action => :edit
		end
	end
	private
	#for Strong Parameters
	#to read :name & :detail from params[:record]
	def record_params
  		params.require(:record).permit(:name, :detail, :date, :howpay_id, :money, :category_id, :is_income)
	end	

end
