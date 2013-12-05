class User < ActiveRecord::Base
	attr_accessor :password
	EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  	validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  	validates :password, :confirmation => true
  	#Only on Create so other actions like update password attribute can be nil
  	validates_length_of :password, :in => 6..20, :on => :create

  	attr_accessible :username, :email, :password, :password_confirmation
end
