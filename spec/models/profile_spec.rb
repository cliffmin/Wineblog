require 'spec_helper'

describe Profile do
	before(:each) do
		@profile1 = Profile.new(email: "blah@blah.com", name: "test name", address2: "test address 2", address1: "test address 1", city: "test city", state: "test state", zip: "80000", phone: "800-800-8000", website: "test site", description: "test description")
	end

	describe "new profile creation" do
		it "should have an email address" do
			expect(@profile1.email).to match("blah@blah.com")
		end
		it "should have a name" do
			expect(@profile1.name).to match("test name")
		end
		it "should have an address2" do
			expect(@profile1.address2).to match("test address 2")
		end
		it "should have an address1" do
			expect(@profile1.address1).to match("test address 1")
		end
		it "should have a city" do
			expect(@profile1.city).to match("test city")
		end
		it "should have a state" do
			expect(@profile1.state).to match("test state")
		end
		it "should have a zip" do
			expect(@profile1.zip).to match("80000")
		end
		it "should have a phone number" do
			expect(@profile1.phone).to match("800-800-8000")
		end
		it "should have a website" do
			expect(@profile1.website).to match("test site")
		end
		it "should have a description" do
			expect(@profile1.description).to match("test description")
		end
	end
end

