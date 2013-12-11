require "spec_helper"
require "cancan/matchers"

describe User do
  describe "abilities" do
    subject(:ability){ Ability.new(user) }
    let(:user){ nil }

    context "when is a basic user" do
      let(:user){User.new}

      it{should be_able_to(:read, [:posts, :comments])}
      it{should be_able_to(:create, :comments)}
      it{should_not be_able_to(:destroy, [:posts, :comments])}
    end

    #Change when user
    context "when is an admin" do
    	let(:user){User.new}

    	it{should be_able_to(:destroy, [:posts, :comments])}
	end
  end
end