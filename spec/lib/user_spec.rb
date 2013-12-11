require "spec_helper"
require "cancan/matchers"

describe User do
  it "has username blarg" do
    user1 = User.new(username: 'blarg')
    user1.username.should == 'blarg'
  end
  
  it "has email blarg@blarg.blargidyblarg" do
  	user2 = User.new(email: "blarg@blarg.blargidyblarg")
  	user2.email.should == "blarg@blarg.blargidyblarg"
  end

  it "has matching passwords" do
    user3 = User.new(password: 'blargblarg', password_confirmation: 'blargblarg')
    user3.password.should == user3.password_confirmation
  end
    
  it "can clear its password" do
    user4 = User.new(password: 'blargblarg', password_confirmation: 'blargblarg')
    user4.clear_password
    user4.password.should == nil
  end	
	
 #  it "can view posts" do
 #  	ability1 = 
 #  	ability.should be_able_to(:read, :posts)
	# ability.should_not be_able_to(:destroy, :posts)
 #  end


end