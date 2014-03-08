require 'spec_helper'

describe UsersController do
  integrate_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

  it "should have the right title" do
    get 'signup'
    response.should contain("title", /Sign up/)
  end

  end

end
