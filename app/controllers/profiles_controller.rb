class ProfilesController < ApplicationController
	def information 
		@current_user_profile = Profile.find(session[:user_id])			
	end
	def tutorial
		@myuser = User.find(session[:user_id])			
	end
	def home
		@current_user = User.find(session[:user_id])			
	end
end
