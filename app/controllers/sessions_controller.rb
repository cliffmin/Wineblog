class SessionsController < ApplicationController
 
	before_filter :authenticate_user, :except => [:index, :login, :login_attempt, :logout]
	before_filter :save_login_state, :only => [:index, :login, :login_attempt]

	def home
		#Home Page
	end

	def profile
		
	end

	def setting
		#Setting Page
	end

	def login
		render "login"
	end

	def login_attempt
		authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
		if authorized_user
			session[:user_id] = authorized_user.id
			flash[:notice] = "Welcome back, #{authorized_user.username}"
			redirect_to(:action => 'home')


		else
			flash[:notice] = "Invalid Username or Password"
        	flash[:color]= "invalid"
			render "login"	
		end
	end

	def logout
		session[:user_id] = nil
		flash[:notice] = "Logout successful."
		redirect_to :root
	end

end
