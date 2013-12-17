class UsersController < ApplicationController

  before_filter :save_login_state, :only => [:new, :create]

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id
      @user.profile_id = @user.id
      @profile = Profile.create!(:user_id => @user.id, :username => @user.username, :id => @user.id)
      @user.profile_id = @profile.id
  		flash[:notice] = "Sign up successful!"
  		redirect_to :tutorial
  	else
  		flash[:notice] = "Form invalid!"
  		render "new"
  	end
  	
  end

end
