require 'spec_helper'
require 'post'

describe Post do
	before(:each) do
		@post1= Post.new(text: "this is my text body", title: "this is my title")
	end
	it "should have a text body" do
		expect(@post1.text).to match("this is my text body")
	end
	it "should have a title body" do
		expect(@post1.title).to match("this is my title")

	end
end
