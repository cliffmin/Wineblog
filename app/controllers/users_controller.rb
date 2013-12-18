class UsersController < ApplicationController
  before_filter :save_login_state, :only => [:new, :create]

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "Sign up successful!"
  		flash[:color] = "valid"
  		redirect_to :root
  	else
  		flash[:notice] = "Form invalid!"
  		flash[:color] = "invalid"
  		render "new"
  	end
  end

  def current_user
    session[:user]
  end

  def admin?
    admin
  end
end
