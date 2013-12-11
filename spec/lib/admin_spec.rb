require "spec_helper"
require "cancan/matchers"


describe User do
  it "has username ubermin" do
    admin1 = User.new(username: 'ubermin')
    admin1.username.should == 'ubermin'
  end
  
  it "has email admin@imawesome.uber" do
  	admin2 = User.new(email: "admin@imawesome.uber")
  	admin2.email.should == "admin@imawesome.uber"
  end

  it "has matching passwords" do
    admin3 = User.new(password: '1234', password_confirmation: '1234')
    admin3.password.should == admin3.password_confirmation
  end
    
  it "can clear its password" do
    admin4 = User.new(password: '1234', password_confirmation: '1234')
    admin4.clear_password
    admin4.password.should == nil
  end	
	
end