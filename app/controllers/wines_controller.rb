class WinesController < ApplicationController
	def create
		@wine = Wines.new(params[:wines])

		respond_to do |format|
			if @wine.save
				format.html { redirect_to wine_show_path, notice: 'Wine was successfully created.' }
				format.json { render action: 'show', status: :created, location: @post }
			else 
				format.html { render action: 'new' }
				format.json { render json: @wine.errors, status: :unprocessable_entity }
			end
		end
	end

	def new

	end
	def show
		@winelist = Wines.all	
	end
end