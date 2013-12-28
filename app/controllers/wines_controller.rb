class WinesController < ApplicationController
	def index
		@winelist = Wines.order(:name)
	end
	def create
		@wine = Wines.new(params[:wines])

		respond_to do |format|
			if @wine.save
				format.html { redirect_to wines_path, notice: 'Wine was successfully created.' }
				format.json { render action: 'show', status: :created, location: @wine }
			else 
				format.html { render action: 'new' }
				format.json { render json: @wine.errors, status: :unprocessable_entity }
			end
		end
	end

	def new

	end

	def update
		@wine = Wines.find(params[:id])			
		@wine.update_attributes(params[:wines])
		if @wine.save
			flash[:notice] = "Update successful!"
			redirect_to	:wine
		else
			flash[:notice] = "Form invalid!"
			render "index"
		end

	end

	def show
	end
	def destroy
		@wine = Wines.find(params[:id])
		if @wine.destroy
			flash[:notice] = "Delete successful!"
			redirect_to	wines_path
		else
			flash[:notice] = "Delete failed!"
			render "index"
		end

	end	
	def edit
		@wine = Wines.find(params[:id])	
	end
end