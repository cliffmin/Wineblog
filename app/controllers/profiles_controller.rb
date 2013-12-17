class ProfilesController < ApplicationController
	def information 
		@profile = Profile.find(session[:user_id]) 	
	end
	def tutorial
		@profile = Profile.find(session[:user_id])			
	end
	def home
		@profile = Profile.find(session[:user_id])			
	end
	def update 
		@profile = Profile.find(session[:user_id])			
		@profile.update_attributes(params[:profile])
		if @profile.save
			flash[:notice] = "Update successful!"
			redirect_to	:profile
		else
			flash[:notice] = "Form invalid!"
			render "new"
		end

	end


end
