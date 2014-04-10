require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'show'" do

	before(:each) do
		@user = FactoryGirl.create(:user)
		# Arrange for User.find(params[:id]) to find the right user
		User.stub!(:find, @user.id).and_return(@user)
	end

	it "should be successful" do
		get :show, :id => @user
		response.should be_success
	end

	it "should have the right title" do
		get :show, :id => @user
		response.should contain(@user.name)
	end

	it "should include the users name" do
		get :show, :id => @user
		response.should contain("h2", @user.name)
	end

	it "should have a profile image" do
		get :show, :id => @user
		response.should contain("h2>img", :class => "gravatar")
	end

  end

  describe "GET 'new'" do

    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      get 'new'
      response.should contain("Sign up")
    end

  end

end
