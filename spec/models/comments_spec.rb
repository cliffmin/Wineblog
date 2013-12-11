require 'spec_helper'
require 'comment'

describe Comment do
	before(:each) do
		@comment1 = Comment.new(text: "this is my text body", created_at: "today", updated_at: "today")
	end
	it "should have a text body" do
		expect(@comment1.text).to match("this is my text body")
	end
	# it "should have a created_at value" do
	# 	breakpoint
	# 	expect(@comment1.created_at.nil?).to_not be_true 
	# end
	# it "should have a created_at value" do
	# 	expect(@comment1.created_at.nil?).to_not be_true 
	# end

end
